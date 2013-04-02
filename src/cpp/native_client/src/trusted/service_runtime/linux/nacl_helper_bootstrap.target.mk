# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := nacl_helper_bootstrap
### Rules for action "munge_phdr":
quiet_cmd_native_client_src_trusted_service_runtime_linux_nacl_bootstrap_gyp_nacl_helper_bootstrap_target_munge_phdr = ACTION Munging ELF program header $@
cmd_native_client_src_trusted_service_runtime_linux_nacl_bootstrap_gyp_nacl_helper_bootstrap_target_munge_phdr = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd native_client/src/trusted/service_runtime/linux; mkdir -p $(builddir); python nacl_bootstrap_munge_phdr.py "$(builddir)/nacl_bootstrap_munge_phdr" "$(builddir)/nacl_bootstrap_raw" "$(builddir)/nacl_helper_bootstrap"

$(builddir)/nacl_helper_bootstrap: obj := $(abs_obj)
$(builddir)/nacl_helper_bootstrap: builddir := $(abs_builddir)
$(builddir)/nacl_helper_bootstrap: TOOLSET := $(TOOLSET)
$(builddir)/nacl_helper_bootstrap: native_client/src/trusted/service_runtime/linux/nacl_bootstrap_munge_phdr.py $(builddir)/nacl_bootstrap_munge_phdr $(builddir)/nacl_bootstrap_raw FORCE_DO_CMD
	$(call do_cmd,native_client_src_trusted_service_runtime_linux_nacl_bootstrap_gyp_nacl_helper_bootstrap_target_munge_phdr)

all_deps += $(builddir)/nacl_helper_bootstrap
action_native_client_src_trusted_service_runtime_linux_nacl_bootstrap_gyp_nacl_helper_bootstrap_target_munge_phdr_outputs := $(builddir)/nacl_helper_bootstrap


### Rules for final target.
# Build our special outputs first.
$(obj).target/native_client/src/trusted/service_runtime/linux/nacl_helper_bootstrap.stamp: | $(action_native_client_src_trusted_service_runtime_linux_nacl_bootstrap_gyp_nacl_helper_bootstrap_target_munge_phdr_outputs)

# Preserve order dependency of special output on deps.
$(action_native_client_src_trusted_service_runtime_linux_nacl_bootstrap_gyp_nacl_helper_bootstrap_target_munge_phdr_outputs): | $(obj).target/native_client/src/trusted/service_runtime/linux/nacl_bootstrap_raw.stamp $(builddir)/nacl_bootstrap_munge_phdr

$(obj).target/native_client/src/trusted/service_runtime/linux/nacl_helper_bootstrap.stamp: TOOLSET := $(TOOLSET)
$(obj).target/native_client/src/trusted/service_runtime/linux/nacl_helper_bootstrap.stamp: $(obj).target/native_client/src/trusted/service_runtime/linux/nacl_bootstrap_raw.stamp $(builddir)/nacl_bootstrap_munge_phdr FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/native_client/src/trusted/service_runtime/linux/nacl_helper_bootstrap.stamp
# Add target alias
.PHONY: nacl_helper_bootstrap
nacl_helper_bootstrap: $(obj).target/native_client/src/trusted/service_runtime/linux/nacl_helper_bootstrap.stamp

# Add target alias to "all" target.
.PHONY: all
all: nacl_helper_bootstrap

