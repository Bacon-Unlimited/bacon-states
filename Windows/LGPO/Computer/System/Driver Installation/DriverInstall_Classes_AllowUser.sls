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
# LOCATION: \Computer\System\Driver Installation\DriverInstall_Classes_AllowUser.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies a list of device setup class GUIDs describing driver packages that non-administrator members of the built-in Users group may install on the system.
# 
# If you enable this policy setting, members of the Users group may install new drivers for the specified device setup classes. The drivers must be signed according to Windows Driver Signing Policy, or be signed by publishers already in the TrustedPublisher store.
# 
# If you disable or do not configure this policy setting, only members of the Administrators group are allowed to install new driver packages on the system.
Allow non-administrators to install drivers for these device setup classes:
  lgpo.set:
  - name: DriverInstall_Classes_AllowUser
  - setting:
      DriverInstall_Classes_AllowUser_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
