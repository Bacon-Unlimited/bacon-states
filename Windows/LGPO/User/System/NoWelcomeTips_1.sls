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
# LOCATION: \User\System\NoWelcomeTips_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kOnly
#
# This policy setting hides the welcome screen that is displayed on Windows 2000 Professional each time the user logs on.
# 
# If you enable this policy setting, the welcome screen is hidden from the user logging on to a computer where this policy is applied.
# 
# Users can still display the welcome screen by selecting it on the Start menu or by typing ""Welcome"" in the Run dialog box.
# 
# If you disable or do not configure this policy, the welcome screen is displayed each time a user logs on to the computer.
# 
# This setting applies only to Windows 2000 Professional. It does not affect the ""Configure Your Server on a Windows 2000 Server"" screen on Windows 2000 Server.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To display the welcome screen, click Start, point to Programs, point to Accessories, point to System Tools, and then click ""Getting Started."" To suppress the welcome screen without specifying a setting, clear the ""Show this screen at startup"" check box on the welcome screen.
Do not display the Getting Started welcome screen at logon:
  lgpo.set:
  - name: NoWelcomeTips_1
  - setting: Enabled
  - policy_class: User
