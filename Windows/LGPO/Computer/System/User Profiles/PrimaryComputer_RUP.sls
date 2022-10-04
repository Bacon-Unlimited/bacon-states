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
# LOCATION: \Computer\System\User Profiles\PrimaryComputer_RUP.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls on a per-computer basis whether roaming profiles are downloaded on a user's primary computers only. This policy setting is useful to improve logon performance and to increase security for user data on computers where the user might not want to download private data, such as on a meeting room computer or on a computer in a remote office.
# 
# To designate a user's primary computers, an administrator must use management software or a script to add primary computer attributes to the user's account in Active Directory Domain Services (AD DS). This policy setting also requires the Windows Server 2012 version of the Active Directory schema to function.
# 
# If you enable this policy setting and the user has a roaming profile, the roaming profile is downloaded on the user's primary computer only.
# 
# If you disable or do not configure this policy setting and the user has a roaming profile, the roaming profile is downloaded on every computer that the user logs on to.
#       
Download roaming profiles on primary computers only:
  lgpo.set:
  - name: PrimaryComputer_RUP
  - setting: Enabled
  - policy_class: Machine
