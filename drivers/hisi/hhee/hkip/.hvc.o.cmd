cmd_drivers/hisi/hhee/hkip/hvc.o :=   aarch64-linux-gnu-gcc -Wp,-MD,drivers/hisi/hhee/hkip/.hvc.o.d -nostdinc -isystem /usr/lib/gcc/aarch64-linux-gnu/16.2.0/include -I./arch/arm64/include -I./arch/arm64/include/generated -I/run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/arch/arm64/include/generated/uapi -I/run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/arch/arm64/include/generated  -I/run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include -I./arch/arm64/include/uapi -I/run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/arch/arm64/include/generated/uapi -I./include/uapi -I/run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/generated/uapi -include ./include/linux/kconfig.h -I./mm -I./include -I./include/linux/hisi -I./drivers -I./drivers/huawei_platform -I./fs/proc -I/run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/drivers/devkit/lcdkit/lcdkit1.0 -I./drivers/hisi/ap/platform/kirin980 -D__KERNEL__ -mlittle-endian -D__ASSEMBLY__ -fno-PIE -DCONFIG_AS_LSE=1 -DCC_HAVE_ASM_GOTO   -c -o drivers/hisi/hhee/hkip/hvc.o drivers/hisi/hhee/hkip/hvc.S

source_drivers/hisi/hhee/hkip/hvc.o := drivers/hisi/hhee/hkip/hvc.S

deps_drivers/hisi/hhee/hkip/hvc.o := \
  arch/arm64/include/asm/alternative.h \
    $(wildcard include/config/arm64/uao.h) \
    $(wildcard include/config/foo.h) \
  arch/arm64/include/asm/cpucaps.h \
  arch/arm64/include/asm/insn.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/uapi/linux/types.h \
  arch/arm64/include/generated/asm/types.h \
  include/uapi/asm-generic/types.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/asm-generic/int-ll64.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/uapi/asm-generic/int-ll64.h \
  arch/arm64/include/uapi/asm/bitsperlong.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/asm-generic/bitsperlong.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/uapi/asm-generic/bitsperlong.h \
  arch/arm64/include/asm/assembler.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/arm64/va/bits/48.h) \
  arch/arm64/include/asm/asm-offsets.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/generated/asm-offsets.h \
  arch/arm64/include/asm/cpufeature.h \
    $(wildcard include/config/arm64/sw/ttbr0/pan.h) \
    $(wildcard include/config/arm64/ssbd.h) \
  arch/arm64/include/asm/hwcap.h \
    $(wildcard include/config/compat.h) \
  arch/arm64/include/uapi/asm/hwcap.h \
  arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  arch/arm64/include/asm/compiler.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/linux/stringify.h \
  arch/arm64/include/asm/cputype.h \
  arch/arm64/include/asm/page.h \
    $(wildcard include/config/arm64/page/shift.h) \
    $(wildcard include/config/arm64/cont/shift.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  include/uapi/linux/const.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/asm-generic/getorder.h \
  arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/hisi/lb.h) \
  arch/arm64/include/asm/ptrace.h \
    $(wildcard include/config/hisi/bb.h) \
  arch/arm64/include/uapi/asm/ptrace.h \
  arch/arm64/include/asm/thread_info.h \
  /run/media/Hyj/4d42e298-9207-44db-8bcf-3eddc241d59f/code/kernel/android_kernel_huawei_kirin980/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \

drivers/hisi/hhee/hkip/hvc.o: $(deps_drivers/hisi/hhee/hkip/hvc.o)

$(deps_drivers/hisi/hhee/hkip/hvc.o):
