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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_EnableEnhancedProtectedMode64Bit.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting determines whether Internet Explorer 11 uses 64-bit processes (for greater security) or 32-bit processes (for greater compatibility) when running in Enhanced Protected Mode on 64-bit versions of Windows.
# 
# Important: Some ActiveX controls and toolbars may not be available when 64-bit processes are used.
# 
# If you enable this policy setting, Internet Explorer 11 will use 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows.
# 
# If you disable this policy setting, Internet Explorer 11 will use 32-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows.
# 
# If you don't configure this policy setting, users can turn this feature on or off using Internet Explorer settings. This feature is turned off by default.
Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows:
  lgpo.set:
  - name: Advanced_EnableEnhancedProtectedMode64Bit
  - setting: Enabled
  - policy_class: User
