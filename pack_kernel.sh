#!/bin/bash
#
# Pack Image.gz into Huawei EMUI 8/9 kernel partition images.
#
# Huawei devices do not have a "boot" partition. The kernel is stored in the
# "kernel" partition as a normal Android boot image without a ramdisk, with
# Huawei specific load offsets.
#
# Usage:
#   ./pack_kernel.sh [Image.gz]
#
# Environment overrides:
#   OUT_DIR          output directory (default: out)
#   MKBOOTIMG        path to mkbootimg (default: tools/mkbootimg)
#   PYTHON           python interpreter (default: python3, fallback: python)
#   CMDLINE_BASE     kernel cmdline without androidboot.selinux
#   OS_VERSION       Android version (default: 9)
#   OS_PATCH_LEVEL   security patch level (default: 2019-03-01)
#
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

IMAGE="${1:-out/arch/arm64/boot/Image.gz}"
OUT_DIR="${OUT_DIR:-out}"
MKBOOTIMG="${MKBOOTIMG:-tools/mkbootimg}"
OS_VERSION="${OS_VERSION:-9}"
OS_PATCH_LEVEL="${OS_PATCH_LEVEL:-2019-03-01}"

CMDLINE_BASE="${CMDLINE_BASE:-loglevel=4 initcall_debug=n page_tracker=on ssbd=kernel printktimer=0xfff0a000,0x534,0x538 unmovable_isolate1=2:192M,3:224M,4:256M buildvariant=user}"
CMDLINE_ENFORCING="androidboot.selinux=enforcing $CMDLINE_BASE"
CMDLINE_PERMISSIVE="androidboot.selinux=permissive $CMDLINE_BASE"

if [ ! -f "$IMAGE" ]; then
	echo "ERROR: kernel image not found: $IMAGE" >&2
	echo "Build the kernel first, or pass the Image.gz path as the first argument." >&2
	exit 1
fi

if [ ! -f "$MKBOOTIMG" ]; then
	echo "ERROR: mkbootimg not found: $MKBOOTIMG" >&2
	exit 1
fi

if [ -z "$PYTHON" ]; then
	if command -v python3 >/dev/null 2>&1; then
		PYTHON=python3
	elif command -v python >/dev/null 2>&1; then
		PYTHON=python
	else
		echo "ERROR: neither python3 nor python found" >&2
		exit 1
	fi
fi

mkdir -p "$OUT_DIR"

ENFORCING_IMG="$OUT_DIR/Kirin980-enforcing.img"
PERMISSIVE_IMG="$OUT_DIR/Kirin980-permissive.img"

pack_image() {
	local output="$1"
	local cmdline="$2"

	"$PYTHON" "$MKBOOTIMG" \
		--kernel "$IMAGE" \
		--base 0x0 \
		--cmdline "$cmdline" \
		--tags_offset 0x07A00000 \
		--kernel_offset 0x00080000 \
		--ramdisk_offset 0x07c00000 \
		--pagesize 2048 \
		--header_version 1 \
		--os_version "$OS_VERSION" \
		--os_patch_level "$OS_PATCH_LEVEL" \
		--output "$output"

	if [ ! -s "$output" ]; then
		echo "ERROR: failed to create $output" >&2
		exit 1
	fi
}

echo "Packing $IMAGE"
echo "  enforcing  -> $ENFORCING_IMG"
pack_image "$ENFORCING_IMG" "$CMDLINE_ENFORCING"
echo "  permissive -> $PERMISSIVE_IMG"
pack_image "$PERMISSIVE_IMG" "$CMDLINE_PERMISSIVE"

echo
ls -lh "$ENFORCING_IMG" "$PERMISSIVE_IMG"
echo
echo "Flash with:"
echo "  fastboot flash kernel $ENFORCING_IMG"
echo "or"
echo "  fastboot flash kernel $PERMISSIVE_IMG"
