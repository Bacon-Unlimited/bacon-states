# SUPPORTED_MSI30
#
# This policy setting controls the ability to turn off all patch optimizations.
# 
# If you enable this policy setting, all Patch Optimization options are turned off during the installation.
# 
# If you disable or do not configure this policy setting, it enables faster application of patches by removing execution of unnecessary actions. The flyweight patching mode is primarily designed for patches that just update a few files or registry values. The Installer will analyze the patch for specific changes to determine if optimization is possible. If so, the patch will be applied using a minimal set of processing.
Prohibit flyweight patching:
  lgpo.set:
  - name: DisableFlyweightPatching
  - setting:
      DisableFlyweightPatching: enum-placeholder
  - policy_class: Machine
