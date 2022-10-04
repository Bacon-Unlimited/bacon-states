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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\TS_RDSAppX_WaitForRegistration.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Windows8_Enterprise_AND_Server
#
# This policy setting allows you to specify whether the app registration is completed before showing the Start screen to the user. 
# 
# By default, when a new user signs in to a computer, the Start screen is shown and apps are registered in the background. However, some apps may not work until app registration is complete.
# 
# If you enable this policy setting, user sign-in is blocked for up to 6 minutes to complete the app registration. You can use this policy setting when customizing the Start screen on Remote Desktop Session Host servers. 
# 
# If you disable or do not configure this policy setting, the Start screen is shown and apps are registered in the background.
Suspend user sign-in to complete app registration:
  lgpo.set:
  - name: TS_RDSAppX_WaitForRegistration
  - setting: Enabled
  - policy_class: Machine
