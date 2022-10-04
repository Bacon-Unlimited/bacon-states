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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Internet Connection Wizard Settings\ICWComplete.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7_NONVISTA
#
# This policy setting determines whether the Internet Connection Wizard was completed. If the Internet Connection Wizard was not completed, this policy setting starts the wizard automatically.
# 
# If you enable this policy setting, the Internet Connection Wizard starts automatically if it was not completed before. The user cannot prevent the wizard from starting.
# 
# If you disable this policy setting, the Internet Connection Wizard does not start automatically. The user can start the wizard manually.
# 
# If you do not configure this policy setting, the user can decide whether the Internet Connection Wizard should start automatically.
Start the Internet Connection Wizard automatically:
  lgpo.set:
  - name: ICWComplete
  - setting: Enabled
  - policy_class: User
