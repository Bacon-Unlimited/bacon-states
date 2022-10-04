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
# LOCATION: \Computer\Windows Components\Portable Operating System\PortableOperatingSystem_Hibernate.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
# 
# Specifies whether the PC can use the hibernation sleep state (S4) when started from a Windows To Go workspace.
# 
# If you enable this setting, Windows, when started from a Windows To Go workspace, can hibernate the PC.
# 
# If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, can't hibernate the PC.
Allow hibernate (S4) when starting from a Windows To Go workspace:
  lgpo.set:
  - name: PortableOperatingSystem_Hibernate
  - setting: Enabled
  - policy_class: Machine
