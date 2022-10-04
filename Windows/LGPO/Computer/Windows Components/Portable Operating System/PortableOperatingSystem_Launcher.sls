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
# LOCATION: \Computer\Windows Components\Portable Operating System\PortableOperatingSystem_Launcher.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
# 
# This policy setting controls whether the PC will boot to Windows To Go if a USB device containing a Windows To Go workspace is connected, and controls whether users can make changes using the Windows To Go Startup Options Control Panel item.
# 
# If you enable this setting, booting to Windows To Go when a USB device is connected will be enabled, and users will not be able to make changes using the Windows To Go Startup Options Control Panel item.
# 
# If you disable this setting, booting to Windows To Go when a USB device is connected will not be enabled unless a user configures the option manually in the BIOS or other boot order configuration.
# 
# If you do not configure this setting, users who are members of the Administrators group can make changes using the Windows To Go Startup Options Control Panel item.
Windows To Go Default Startup Options:
  lgpo.set:
  - name: PortableOperatingSystem_Launcher
  - setting: Enabled
  - policy_class: Machine
