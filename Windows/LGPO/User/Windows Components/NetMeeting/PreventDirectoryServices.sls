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
# LOCATION: \User\Windows Components\NetMeeting\PreventDirectoryServices.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_NetMeeting3
#
# Disables the directory feature of NetMeeting.
# 
# Users will not logon to a directory (ILS) server when NetMeeting starts.  Users will also not be able to view or place calls via a NetMeeting directory.
# 
# This policy is for deployers who have their own location or calling schemes such as a Web site or an address book." 
Disable Directory services:
  lgpo.set:
  - name: PreventDirectoryServices
  - setting: Enabled
  - policy_class: User
