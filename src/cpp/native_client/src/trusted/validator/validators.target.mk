# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := validators
DEFS_Debug := \
	'-DNACL_LINUX=1' \
	'-DNACL_ANDROID=0' \
	'-DNACL_OSX=0' \
	'-DNACL_WINDOWS=0' \
	'-D_BSD_SOURCE=1' \
	'-D_POSIX_C_SOURCE=199506' \
	'-D_XOPEN_SOURCE=600' \
	'-D_GNU_SOURCE=1' \
	'-D__STDC_LIMIT_MACROS=1' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNACL_TARGET_SUBARCH=64' \
	'-DNACL_TARGET_ARCH=x86' \
	'-DNACL_BUILD_SUBARCH=64' \
	'-DNACL_BUILD_ARCH=x86' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-fPIC \
	-Wextra \
	-Wno-long-long \
	-Wswitch-enum \
	-Wsign-compare \
	-Wundef \
	-fdiagnostics-show-option \
	-m64 \
	-fno-exceptions \
	-Wall \
	-O0 \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-Wstrict-prototypes

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics

INCS_Debug := \
	-Inative_client/src/third_party \
	-I.

DEFS_Release := \
	'-DNACL_LINUX=1' \
	'-DNACL_ANDROID=0' \
	'-DNACL_OSX=0' \
	'-DNACL_WINDOWS=0' \
	'-D_BSD_SOURCE=1' \
	'-D_POSIX_C_SOURCE=199506' \
	'-D_XOPEN_SOURCE=600' \
	'-D_GNU_SOURCE=1' \
	'-D__STDC_LIMIT_MACROS=1' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNACL_TARGET_SUBARCH=64' \
	'-DNACL_TARGET_ARCH=x86' \
	'-DNACL_BUILD_SUBARCH=64' \
	'-DNACL_BUILD_ARCH=x86' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-fPIC \
	-Wextra \
	-Wno-long-long \
	-Wswitch-enum \
	-Wsign-compare \
	-Wundef \
	-fdiagnostics-show-option \
	-m64 \
	-fno-exceptions \
	-Wall \
	-O2 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Release := \
	-Wstrict-prototypes

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-threadsafe-statics

INCS_Release := \
	-Inative_client/src/third_party \
	-I.

OBJS := \
	$(obj).target/$(TARGET)/native_client/src/trusted/validator/validator_init.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-Wl,-z,noexecstack \
	-m64 \
	-rdynamic

LDFLAGS_Release := \
	-pthread \
	-Wl,-z,noexecstack \
	-m64

LIBS :=

$(obj).target/native_client/src/trusted/validator/libvalidators.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/native_client/src/trusted/validator/libvalidators.a: LIBS := $(LIBS)
$(obj).target/native_client/src/trusted/validator/libvalidators.a: TOOLSET := $(TOOLSET)
$(obj).target/native_client/src/trusted/validator/libvalidators.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/native_client/src/trusted/validator/libvalidators.a
# Add target alias
.PHONY: validators
validators: $(obj).target/native_client/src/trusted/validator/libvalidators.a

# Add target alias to "all" target.
.PHONY: all
all: validators

