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
# LOCATION: \Computer\Windows Components\Microsoft Edge\AllowPrelaunch.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_RS5
#
# This policy setting lets you decide whether Microsoft Edge can pre-launch during Windows sign in, when the system is idle, and each time Microsoft Edge is closed. By default this setting is to allow pre-launch.
# 
# If you allow pre-launch, disable, or dont configure this policy setting, Microsoft Edge pre-launches during Windows sign in, when the system is idle, and each time Microsoft Edge is closed; minimizing the amount of time required to start up Microsoft Edge.
# 
# If you prevent pre-launch, Microsoft Edge wont pre-launch during Windows sign in, when the system is idle, or each time Microsoft Edge is closed.
Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed:
  lgpo.set:
  - name: AllowPrelaunch
  - setting:
      AllowPrelaunchDropdown: enum-placeholder
  - policy_class: Machine
