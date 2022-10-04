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
# LOCATION: \User\Windows Components\Internet Explorer\Persistence Behavior\Persistence_FileLimits0.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Limits the amount of storage that a page or site using the DHTML Persistence behavior can use for the Local Computer security zone.
# 
# If you enable this policy, you can specify the persistence storage amount per domain or per document for this security zone.
# 
# If you disable this policy or do not configure it, you cannot set this limit.
# 
# Note: This setting does not appear in the user interface.
File size limits for Local Machine zone:
  lgpo.set:
  - name: Persistence_FileLimits0
  - setting:
      FileLimits_Document0: decimal-placeholder
      FileLimits_Domain0: decimal-placeholder
  - policy_class: User
