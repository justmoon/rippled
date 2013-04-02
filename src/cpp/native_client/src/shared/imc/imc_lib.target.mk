# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := imc_lib
### Rules for action "build newlib x86-64 nlib":
quiet_cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_64_nlib = ACTION native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_64_nlib $@
cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_64_nlib = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd native_client/src/shared/imc; mkdir -p $(obj)/gen/tc_newlib/lib64; python ../../../../native_client/build/build_nexe.py -t "$(obj)/gen/sdk/toolchain/" --arch x86-64 --build newlib_nlib --root ../../../.. --name "$(obj)/gen/tc_newlib/lib64/libimc.a" --objdir "$(obj).$(TOOLSET)/imc_lib/geni/newlib-x86-64/imc_lib" "--include-dirs=$(obj)/gen/tc_newlib/include ../../../.. ../../../../ppapi ../../../src/third_party ../../../.." "--lib-dirs= " "--compile_flags=-m64 -mtls-use-call -fomit-frame-pointer -fasynchronous-unwind-tables  -Wundef -O2 -g -Wall -Werror -fdiagnostics-show-option " "--defines=__linux__ \"__STDC_LIMIT_MACROS=1\" \"__STDC_FORMAT_MACROS=1\" \"_GNU_SOURCE=1\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"DYNAMIC_ANNOTATIONS_ENABLED=1\" \"DYNAMIC_ANNOTATIONS_PREFIX=NACL_\" \"NACL_BUILD_ARCH=x86\" \"NACL_LINUX=1\" \"NACL_ANDROID=0\" \"NACL_OSX=0\" \"NACL_WINDOWS=0\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"_GNU_SOURCE=1\" \"__STDC_LIMIT_MACROS=1\" __STDC_FORMAT_MACROS \"NACL_TARGET_SUBARCH=64\" \"NACL_TARGET_ARCH=x86\" \"NACL_BUILD_SUBARCH=64\" \"NACL_BUILD_ARCH=x86\"" "--link_flags=-B$(obj)/gen/tc_newlib/lib64  " "--source-list=newlib-x86-64.imc_lib.source_list.gypcmd"

$(obj)/gen/tc_newlib/lib64/libimc.a: obj := $(abs_obj)
$(obj)/gen/tc_newlib/lib64/libimc.a: builddir := $(abs_builddir)
$(obj)/gen/tc_newlib/lib64/libimc.a: TOOLSET := $(TOOLSET)
$(obj)/gen/tc_newlib/lib64/libimc.a: native_client/build/build_nexe.py native_client/src/include/nacl_base.h native_client/src/include/nacl_compiler_annotations.h native_client/src/include/nacl_macros.h native_client/src/include/portability.h native_client/src/include/win/port_win.h native_client/src/third_party/valgrind/memcheck.h native_client/src/third_party/valgrind/valgrind.h native_client/src/trusted/service_runtime/include/bits/wordsize.h native_client/src/trusted/service_runtime/include/machine/_types.h native_client/src/shared/platform/nacl_log.h native_client/src/shared/imc/nacl/nacl_imc.cc native_client/src/shared/imc/nacl_imc_c.h native_client/src/shared/imc/nacl_imc_common.cc native_client/src/shared/imc/newlib-x86-64.imc_lib.source_list.gypcmd $(obj)/gen/sdk/toolchain/linux_x86_newlib/stamp.prep FORCE_DO_CMD
	$(call do_cmd,native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_64_nlib)

all_deps += $(obj)/gen/tc_newlib/lib64/libimc.a
action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_64_nlib_outputs := $(obj)/gen/tc_newlib/lib64/libimc.a

### Rules for action "build newlib x86-32 nlib":
quiet_cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_32_nlib = ACTION native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_32_nlib $@
cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_32_nlib = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd native_client/src/shared/imc; mkdir -p $(obj)/gen/tc_newlib/lib32; python ../../../../native_client/build/build_nexe.py -t "$(obj)/gen/sdk/toolchain/" --arch x86-32 --build newlib_nlib --root ../../../.. --name "$(obj)/gen/tc_newlib/lib32/libimc.a" --objdir "$(obj).$(TOOLSET)/imc_lib/geni/newlib-x86-32/imc_lib" "--include-dirs=$(obj)/gen/tc_newlib/include ../../../.. ../../../../ppapi ../../../src/third_party ../../../.." "--lib-dirs=" "--compile_flags=-m32 -mtls-use-call -fomit-frame-pointer -fasynchronous-unwind-tables  -Wundef -O2 -g -Wall -Werror -fdiagnostics-show-option " "--defines=__linux__ \"__STDC_LIMIT_MACROS=1\" \"__STDC_FORMAT_MACROS=1\" \"_GNU_SOURCE=1\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"DYNAMIC_ANNOTATIONS_ENABLED=1\" \"DYNAMIC_ANNOTATIONS_PREFIX=NACL_\" \"NACL_BUILD_ARCH=x86\" \"NACL_LINUX=1\" \"NACL_ANDROID=0\" \"NACL_OSX=0\" \"NACL_WINDOWS=0\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"_GNU_SOURCE=1\" \"__STDC_LIMIT_MACROS=1\" __STDC_FORMAT_MACROS \"NACL_TARGET_SUBARCH=64\" \"NACL_TARGET_ARCH=x86\" \"NACL_BUILD_SUBARCH=64\" \"NACL_BUILD_ARCH=x86\"" "--link_flags=-m32 -B$(obj)/gen/tc_newlib/lib32  " "--source-list=newlib-x86-32.imc_lib.source_list.gypcmd"

$(obj)/gen/tc_newlib/lib32/libimc.a: obj := $(abs_obj)
$(obj)/gen/tc_newlib/lib32/libimc.a: builddir := $(abs_builddir)
$(obj)/gen/tc_newlib/lib32/libimc.a: TOOLSET := $(TOOLSET)
$(obj)/gen/tc_newlib/lib32/libimc.a: native_client/build/build_nexe.py native_client/src/include/nacl_base.h native_client/src/include/nacl_compiler_annotations.h native_client/src/include/nacl_macros.h native_client/src/include/portability.h native_client/src/include/win/port_win.h native_client/src/third_party/valgrind/memcheck.h native_client/src/third_party/valgrind/valgrind.h native_client/src/trusted/service_runtime/include/bits/wordsize.h native_client/src/trusted/service_runtime/include/machine/_types.h native_client/src/shared/platform/nacl_log.h native_client/src/shared/imc/nacl/nacl_imc.cc native_client/src/shared/imc/nacl_imc_c.h native_client/src/shared/imc/nacl_imc_common.cc native_client/src/shared/imc/newlib-x86-32.imc_lib.source_list.gypcmd $(obj)/gen/sdk/toolchain/linux_x86_newlib/stamp.prep FORCE_DO_CMD
	$(call do_cmd,native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_32_nlib)

all_deps += $(obj)/gen/tc_newlib/lib32/libimc.a
action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_32_nlib_outputs := $(obj)/gen/tc_newlib/lib32/libimc.a

### Rules for action "build glibc x86-64 nlib":
quiet_cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nlib = ACTION native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nlib $@
cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nlib = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd native_client/src/shared/imc; mkdir -p $(obj)/gen/tc_glibc/lib64; python ../../../../native_client/build/build_nexe.py -t "$(obj)/gen/sdk/toolchain/" --arch x86-64 --build glibc_nlib --root ../../../.. --name "$(obj)/gen/tc_glibc/lib64/libimc.a" --objdir "$(obj).$(TOOLSET)/imc_lib/geni/glibc-x86-64/imc_lib" "--include-dirs=$(obj)/gen/tc_glibc/include ../../../.. ../../../../ppapi ../../../src/third_party ../../../.." "--lib-dirs= " "--compile_flags=-m64 -fomit-frame-pointer -fasynchronous-unwind-tables  -Wundef -O2 -g -Wall -Werror -fdiagnostics-show-option " "--defines=__linux__ \"__STDC_LIMIT_MACROS=1\" \"__STDC_FORMAT_MACROS=1\" \"_GNU_SOURCE=1\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"DYNAMIC_ANNOTATIONS_ENABLED=1\" \"DYNAMIC_ANNOTATIONS_PREFIX=NACL_\" \"NACL_BUILD_ARCH=x86\" \"NACL_LINUX=1\" \"NACL_ANDROID=0\" \"NACL_OSX=0\" \"NACL_WINDOWS=0\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"_GNU_SOURCE=1\" \"__STDC_LIMIT_MACROS=1\" __STDC_FORMAT_MACROS \"NACL_TARGET_SUBARCH=64\" \"NACL_TARGET_ARCH=x86\" \"NACL_BUILD_SUBARCH=64\" \"NACL_BUILD_ARCH=x86\"" "--link_flags=-B$(obj)/gen/tc_glibc/lib64  " "--source-list=glibc-x86-64.imc_lib.source_list.gypcmd"

$(obj)/gen/tc_glibc/lib64/libimc.a: obj := $(abs_obj)
$(obj)/gen/tc_glibc/lib64/libimc.a: builddir := $(abs_builddir)
$(obj)/gen/tc_glibc/lib64/libimc.a: TOOLSET := $(TOOLSET)
$(obj)/gen/tc_glibc/lib64/libimc.a: native_client/build/build_nexe.py native_client/src/include/nacl_base.h native_client/src/include/nacl_compiler_annotations.h native_client/src/include/nacl_macros.h native_client/src/include/portability.h native_client/src/include/win/port_win.h native_client/src/third_party/valgrind/memcheck.h native_client/src/third_party/valgrind/valgrind.h native_client/src/trusted/service_runtime/include/bits/wordsize.h native_client/src/trusted/service_runtime/include/machine/_types.h native_client/src/shared/platform/nacl_log.h native_client/src/shared/imc/nacl/nacl_imc.cc native_client/src/shared/imc/nacl_imc_c.h native_client/src/shared/imc/nacl_imc_common.cc native_client/src/shared/imc/glibc-x86-64.imc_lib.source_list.gypcmd $(obj)/gen/sdk/toolchain/linux_x86_glibc/stamp.prep FORCE_DO_CMD
	$(call do_cmd,native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nlib)

all_deps += $(obj)/gen/tc_glibc/lib64/libimc.a
action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nlib_outputs := $(obj)/gen/tc_glibc/lib64/libimc.a

### Rules for action "build glibc x86-32 nlib":
quiet_cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nlib = ACTION native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nlib $@
cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nlib = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd native_client/src/shared/imc; mkdir -p $(obj)/gen/tc_glibc/lib32; python ../../../../native_client/build/build_nexe.py -t "$(obj)/gen/sdk/toolchain/" --arch x86-32 --build glibc_nlib --root ../../../.. --name "$(obj)/gen/tc_glibc/lib32/libimc.a" --objdir "$(obj).$(TOOLSET)/imc_lib/geni/glibc-x86-32/imc_lib" "--include-dirs=$(obj)/gen/tc_glibc/include ../../../.. ../../../../ppapi ../../../src/third_party ../../../.." "--lib-dirs=" "--compile_flags=-m32 -fomit-frame-pointer -fasynchronous-unwind-tables  -Wundef -O2 -g -Wall -Werror -fdiagnostics-show-option " "--defines=__linux__ \"__STDC_LIMIT_MACROS=1\" \"__STDC_FORMAT_MACROS=1\" \"_GNU_SOURCE=1\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"DYNAMIC_ANNOTATIONS_ENABLED=1\" \"DYNAMIC_ANNOTATIONS_PREFIX=NACL_\" \"NACL_BUILD_ARCH=x86\" \"NACL_LINUX=1\" \"NACL_ANDROID=0\" \"NACL_OSX=0\" \"NACL_WINDOWS=0\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"_GNU_SOURCE=1\" \"__STDC_LIMIT_MACROS=1\" __STDC_FORMAT_MACROS \"NACL_TARGET_SUBARCH=64\" \"NACL_TARGET_ARCH=x86\" \"NACL_BUILD_SUBARCH=64\" \"NACL_BUILD_ARCH=x86\"" "--link_flags=-m32 -B$(obj)/gen/tc_glibc/lib32  " "--source-list=glibc-x86-32.imc_lib.source_list.gypcmd"

$(obj)/gen/tc_glibc/lib32/libimc.a: obj := $(abs_obj)
$(obj)/gen/tc_glibc/lib32/libimc.a: builddir := $(abs_builddir)
$(obj)/gen/tc_glibc/lib32/libimc.a: TOOLSET := $(TOOLSET)
$(obj)/gen/tc_glibc/lib32/libimc.a: native_client/build/build_nexe.py native_client/src/include/nacl_base.h native_client/src/include/nacl_compiler_annotations.h native_client/src/include/nacl_macros.h native_client/src/include/portability.h native_client/src/include/win/port_win.h native_client/src/third_party/valgrind/memcheck.h native_client/src/third_party/valgrind/valgrind.h native_client/src/trusted/service_runtime/include/bits/wordsize.h native_client/src/trusted/service_runtime/include/machine/_types.h native_client/src/shared/platform/nacl_log.h native_client/src/shared/imc/nacl/nacl_imc.cc native_client/src/shared/imc/nacl_imc_c.h native_client/src/shared/imc/nacl_imc_common.cc native_client/src/shared/imc/glibc-x86-32.imc_lib.source_list.gypcmd $(obj)/gen/sdk/toolchain/linux_x86_glibc/stamp.prep FORCE_DO_CMD
	$(call do_cmd,native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nlib)

all_deps += $(obj)/gen/tc_glibc/lib32/libimc.a
action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nlib_outputs := $(obj)/gen/tc_glibc/lib32/libimc.a

### Rules for action "build glibc x86-64 nso":
quiet_cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nso = ACTION native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nso $@
cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nso = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd native_client/src/shared/imc; mkdir -p $(obj)/gen/tc_glibc/lib64; python ../../../../native_client/build/build_nexe.py -t "$(obj)/gen/sdk/toolchain/" --arch x86-64 --build glibc_nso --root ../../../.. --name "$(obj)/gen/tc_glibc/lib64/libimc.so" --objdir "$(obj).$(TOOLSET)/imc_lib/geni/glibc-x86-64-so/imc_lib" "--include-dirs=$(obj)/gen/tc_glibc/include ../../../.. ../../../../ppapi ../../../src/third_party ../../../.." "--lib-dirs= " "--compile_flags=-m64 -fPIC -fomit-frame-pointer -fasynchronous-unwind-tables  -Wundef -O2 -g -Wall -Werror -fdiagnostics-show-option " "--defines=__linux__ \"__STDC_LIMIT_MACROS=1\" \"__STDC_FORMAT_MACROS=1\" \"_GNU_SOURCE=1\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"DYNAMIC_ANNOTATIONS_ENABLED=1\" \"DYNAMIC_ANNOTATIONS_PREFIX=NACL_\" \"NACL_BUILD_ARCH=x86\" \"NACL_LINUX=1\" \"NACL_ANDROID=0\" \"NACL_OSX=0\" \"NACL_WINDOWS=0\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"_GNU_SOURCE=1\" \"__STDC_LIMIT_MACROS=1\" __STDC_FORMAT_MACROS \"NACL_TARGET_SUBARCH=64\" \"NACL_TARGET_ARCH=x86\" \"NACL_BUILD_SUBARCH=64\" \"NACL_BUILD_ARCH=x86\"" "--link_flags=-B$(obj)/gen/tc_glibc/lib64  " "--source-list=glibc-x86-64-so.imc_lib.source_list.gypcmd"

$(obj)/gen/tc_glibc/lib64/libimc.so: obj := $(abs_obj)
$(obj)/gen/tc_glibc/lib64/libimc.so: builddir := $(abs_builddir)
$(obj)/gen/tc_glibc/lib64/libimc.so: TOOLSET := $(TOOLSET)
$(obj)/gen/tc_glibc/lib64/libimc.so: native_client/build/build_nexe.py native_client/src/include/nacl_base.h native_client/src/include/nacl_compiler_annotations.h native_client/src/include/nacl_macros.h native_client/src/include/portability.h native_client/src/include/win/port_win.h native_client/src/third_party/valgrind/memcheck.h native_client/src/third_party/valgrind/valgrind.h native_client/src/trusted/service_runtime/include/bits/wordsize.h native_client/src/trusted/service_runtime/include/machine/_types.h native_client/src/shared/platform/nacl_log.h native_client/src/shared/imc/nacl/nacl_imc.cc native_client/src/shared/imc/nacl_imc_c.h native_client/src/shared/imc/nacl_imc_common.cc native_client/src/shared/imc/glibc-x86-64-so.imc_lib.source_list.gypcmd $(obj)/gen/sdk/toolchain/linux_x86_newlib/stamp.prep FORCE_DO_CMD
	$(call do_cmd,native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nso)

all_deps += $(obj)/gen/tc_glibc/lib64/libimc.so
action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nso_outputs := $(obj)/gen/tc_glibc/lib64/libimc.so

### Rules for action "build glibc x86-32 nso":
quiet_cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nso = ACTION native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nso $@
cmd_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nso = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd native_client/src/shared/imc; mkdir -p $(obj)/gen/tc_glibc/lib32; python ../../../../native_client/build/build_nexe.py -t "$(obj)/gen/sdk/toolchain/" --arch x86-32 --build glibc_nso --root ../../../.. --name "$(obj)/gen/tc_glibc/lib32/libimc.so" --objdir "$(obj).$(TOOLSET)/imc_lib/geni/glibc-x86-32-so/imc_lib" "--include-dirs=$(obj)/gen/tc_glibc/include ../../../.. ../../../../ppapi ../../../src/third_party ../../../.." "--lib-dirs=" "--compile_flags=-m32 -fPIC -fomit-frame-pointer -fasynchronous-unwind-tables  -Wundef -O2 -g -Wall -Werror -fdiagnostics-show-option " "--defines=__linux__ \"__STDC_LIMIT_MACROS=1\" \"__STDC_FORMAT_MACROS=1\" \"_GNU_SOURCE=1\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"DYNAMIC_ANNOTATIONS_ENABLED=1\" \"DYNAMIC_ANNOTATIONS_PREFIX=NACL_\" \"NACL_BUILD_ARCH=x86\" \"NACL_LINUX=1\" \"NACL_ANDROID=0\" \"NACL_OSX=0\" \"NACL_WINDOWS=0\" \"_BSD_SOURCE=1\" \"_POSIX_C_SOURCE=199506\" \"_XOPEN_SOURCE=600\" \"_GNU_SOURCE=1\" \"__STDC_LIMIT_MACROS=1\" __STDC_FORMAT_MACROS \"NACL_TARGET_SUBARCH=64\" \"NACL_TARGET_ARCH=x86\" \"NACL_BUILD_SUBARCH=64\" \"NACL_BUILD_ARCH=x86\"" "--link_flags=-m32 -B$(obj)/gen/tc_glibc/lib32  " "--source-list=glibc-x86-32-so.imc_lib.source_list.gypcmd"

$(obj)/gen/tc_glibc/lib32/libimc.so: obj := $(abs_obj)
$(obj)/gen/tc_glibc/lib32/libimc.so: builddir := $(abs_builddir)
$(obj)/gen/tc_glibc/lib32/libimc.so: TOOLSET := $(TOOLSET)
$(obj)/gen/tc_glibc/lib32/libimc.so: native_client/build/build_nexe.py native_client/src/include/nacl_base.h native_client/src/include/nacl_compiler_annotations.h native_client/src/include/nacl_macros.h native_client/src/include/portability.h native_client/src/include/win/port_win.h native_client/src/third_party/valgrind/memcheck.h native_client/src/third_party/valgrind/valgrind.h native_client/src/trusted/service_runtime/include/bits/wordsize.h native_client/src/trusted/service_runtime/include/machine/_types.h native_client/src/shared/platform/nacl_log.h native_client/src/shared/imc/nacl/nacl_imc.cc native_client/src/shared/imc/nacl_imc_c.h native_client/src/shared/imc/nacl_imc_common.cc native_client/src/shared/imc/glibc-x86-32-so.imc_lib.source_list.gypcmd $(obj)/gen/sdk/toolchain/linux_x86_newlib/stamp.prep FORCE_DO_CMD
	$(call do_cmd,native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nso)

all_deps += $(obj)/gen/tc_glibc/lib32/libimc.so
action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nso_outputs := $(obj)/gen/tc_glibc/lib32/libimc.so


### Rules for final target.
# Build our special outputs first.
$(obj).target/native_client/src/shared/imc/imc_lib.stamp: | $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_64_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_32_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nso_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nso_outputs)

# Preserve order dependency of special output on deps.
$(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_64_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_newlib_x86_32_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nlib_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_64_nso_outputs) $(action_native_client_src_shared_imc_imc_gyp_imc_lib_target_build_glibc_x86_32_nso_outputs): | $(obj).target/native_client/prep_toolchain.stamp

$(obj).target/native_client/src/shared/imc/imc_lib.stamp: TOOLSET := $(TOOLSET)
$(obj).target/native_client/src/shared/imc/imc_lib.stamp: $(obj).target/native_client/prep_toolchain.stamp FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/native_client/src/shared/imc/imc_lib.stamp
# Add target alias
.PHONY: imc_lib
imc_lib: $(obj).target/native_client/src/shared/imc/imc_lib.stamp

# Add target alias to "all" target.
.PHONY: all
all: imc_lib

