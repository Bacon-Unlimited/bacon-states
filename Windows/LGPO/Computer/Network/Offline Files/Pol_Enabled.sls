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
# LOCATION: \Computer\Network\Offline Files\Pol_Enabled.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting determines whether the Offline Files feature is enabled. Offline Files saves a copy of network files on the user's computer for use when the computer is not connected to the network.
# 
# If you enable this policy setting, Offline Files is enabled and users cannot disable it.
# 
# If you disable this policy setting, Offline Files is disabled and users cannot enable it.
# 
# If you do not configure this policy setting, Offline Files is enabled on Windows client computers, and disabled on computers running Windows Server, unless changed by the user.
# 
# Note: Changes to this policy setting do not take effect until the affected computer is restarted.
Allow or Disallow use of the Offline Files feature:
  lgpo.set:
  - name: Pol_Enabled
  - setting: Enabled
  - policy_class: Machine
