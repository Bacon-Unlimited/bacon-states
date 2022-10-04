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
# LOCATION: \Computer\Windows Components\Delivery Optimization\GroupIdSource.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# Set this policy to restrict peer selection to a specific source.
# 
# Options available are:
# 
# 1 = AD Site.
# 
# 2 = Authenticated domain SID.
# 
# 3 = DHCP Option ID.
# 
# 4 = DNS Suffix.
# 
# 5 = AAD Tenant ID.
# 
# When set, the Group ID will be assigned automatically from the selected source. If you set this policy, the GroupID policy will be ignored.
# 
# The options set in this policy only apply to Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored.
# 
# For option 3 - DHCP Option ID, the client will query DHCP Option ID 234 and use the returned GUID value as the Group ID.
Select the source of Group IDs:
  lgpo.set:
  - name: GroupIdSource
  - setting:
      GroupIdSource: enum-placeholder
  - policy_class: Machine
