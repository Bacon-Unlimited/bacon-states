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
# LOCATION: \Computer\Windows Components\Portable Operating System\PortableOperatingSystem_Sleep.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
# 
# Specifies whether the PC can use standby sleep states (S1-S3) when starting from a Windows To Go workspace.
# 
# If you enable this setting, Windows, when started from a Windows To Go workspace, can't use standby states to make the PC sleep.
# 
# If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, can use standby states to make the PC sleep.
Disallow standby sleep states (S1-S3) when starting from a Windows to Go workspace:
  lgpo.set:
  - name: PortableOperatingSystem_Sleep
  - setting: Enabled
  - policy_class: Machine
