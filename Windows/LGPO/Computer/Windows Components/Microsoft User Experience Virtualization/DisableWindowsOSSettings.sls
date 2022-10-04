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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\DisableWindowsOSSettings.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of Windows settings between computers.
# Certain Windows settings will synchronize between computers by default. These settings include Windows themes, Windows desktop settings, Ease of Access settings, and network printers. Use this policy setting to specify which Windows settings synchronize between computers. You can also use these settings to enable synchronization of users' sign-in information for certain apps, networks, and certificates.
# If you enable this policy setting, only the selected Windows settings synchronize. Unselected Windows settings are excluded from settings synchronization.
# If you disable this policy setting, all Windows Settings are excluded from the settings synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Synchronize Windows settings:
  lgpo.set:
  - name: DisableWindowsOSSettings
  - setting:
      DesktopSettings: boolean-placeholder
      EaseOfAccessSettings: boolean-placeholder
      NetworkPrinters: boolean-placeholder
      RoamingCredentialSettings: boolean-placeholder
      ThemeSettings: boolean-placeholder
  - policy_class: Machine
