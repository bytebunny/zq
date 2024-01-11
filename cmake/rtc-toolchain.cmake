get_filename_component(TOOLCHAIN_DIR "${CMAKE_CURRENT_LIST_FILE}" DIRECTORY)
include("${TOOLCHAIN_DIR}/base-toolchain.cmake")

set(GENERIC_BUILD_ELENUX_ROOT /opt/elenux/sysroots)

set(ENV{SDKTARGETSYSROOT} ${GENERIC_BUILD_ELENUX_ROOT}/corei7-64-epf-linux)
set(ENV{OECORE_NATIVE_SYSROOT} ${GENERIC_BUILD_ELENUX_ROOT}/x86_64-epfsdk-linux)
set(ENV{PKG_CONFIG_SYSROOT_DIR} $ENV{SDKTARGETSYSROOT})
set(ENV{PKG_CONFIG_PATH} "$ENV{SDKTARGETSYSROOT}/usr/lib/pkgconfig:$ENV{SDKTARGETSYSROOT}/usr/share/pkgconfig")

set(ENV{PATH} "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin:$ENV{OECORE_NATIVE_SYSROOT}/usr/sbin:$ENV{OECORE_NATIVE_SYSROOT}/bin:$ENV{OECORE_NATIVE_SYSROOT}/sbin:$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/../x86_64-epfsdk-linux/bin:$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/x86_64-epf-linux:$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/x86_64-epf-linux-musl:$ENV{PATH}")

include($ENV{OECORE_NATIVE_SYSROOT}/usr/share/cmake/corei7-64-epf-linux-toolchain.cmake)
