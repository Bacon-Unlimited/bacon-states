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
# LOCATION: \Computer\Network\Fonts\EnableFontProviders.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting determines whether Windows is allowed to download fonts and font catalog data from an online font provider.
# 
#         If you enable this policy setting, Windows periodically queries an online font provider to determine whether a new font catalog is available. Windows may also download font data if needed to format or render text.
# 
#         If you disable this policy setting, Windows does not connect to an online font provider and only enumerates locally-installed fonts.
# 
#         If you do not configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
#       
Enable Font Providers:
  lgpo.set:
  - name: EnableFontProviders
  - setting: Enabled
  - policy_class: Machine
