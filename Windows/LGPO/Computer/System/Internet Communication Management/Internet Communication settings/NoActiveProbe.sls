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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\NoActiveProbe.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the active tests performed by the Windows Network Connectivity Status Indicator (NCSI) to determine whether your computer is connected to the Internet or to a more limited network.
# 
# As part of determining the connectivity level, NCSI performs one of two active tests: downloading a page from a dedicated Web server or making a DNS request for a dedicated address.
# 
# If you enable this policy setting, NCSI does not run either of the two active tests. This may reduce the ability of NCSI, and of other components that use NCSI, to determine Internet access. 
# 
# If you disable or do not configure this policy setting, NCSI runs one of the two active tests.
Turn off Windows Network Connectivity Status Indicator active tests:
  lgpo.set:
  - name: NoActiveProbe
  - setting: Enabled
  - policy_class: Machine
