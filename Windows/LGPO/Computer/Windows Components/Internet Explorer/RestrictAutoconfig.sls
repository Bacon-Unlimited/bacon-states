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
# LOCATION: \Computer\Windows Components\Internet Explorer\RestrictAutoconfig.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# This setting specifies to automatically detect the proxy server settings used to connect to the Internet and customize Internet Explorer. This setting specifies that Internet explorer use the configuration settings provided in a file by the system administrator.
# 
# If you enable this policy setting, the user will not be able to do automatic configuration. You can import your current connection settings from your machine using Internet Explorer Maintenance under Admin Templates using group policy editor.
# 
# If you disable or do no configure this policy setting, the user will have the freedom to automatically configure these settings.
Disable changing Automatic Configuration settings:
  lgpo.set:
  - name: RestrictAutoconfig
  - setting: Enabled
  - policy_class: Machine
