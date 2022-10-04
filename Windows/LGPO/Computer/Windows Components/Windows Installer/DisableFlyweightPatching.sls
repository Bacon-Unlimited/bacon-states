####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Windows Installer\DisableFlyweightPatching.sls
#
# SUPPORTED WINDOWS OS
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
