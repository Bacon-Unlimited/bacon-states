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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Restricted Sites Zone\IZ_PolicyDragDropAcrossDomainsAcrossWindows_Both_Restricted.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to set options for dragging content from one domain to a different domain when the source and destination are in different windows.
# 
# If you enable this policy setting and click Enable, users can drag content from one domain to a different domain when the source and destination are in different windows. Users cannot change this setting.
# 
# If you enable this policy setting and click Disable, users cannot drag content from one domain to a different domain when both the source and destination are in different windows. Users cannot change this setting.
# 
# In Internet Explorer 10, if you disable this policy setting or do not configure it, users cannot drag content from one domain to a different domain when the source and destination are in different windows. Users can change this setting in the Internet Options dialog.
# 
# In Internet Explorer 9 and earlier versions, if you disable this policy or do not configure it, users can drag content from one domain to a different domain when the source and destination are in different windows. Users cannot change this setting.
Enable dragging of content from different domains across windows:
  lgpo.set:
  - name: IZ_PolicyDragDropAcrossDomainsAcrossWindows_Both_Restricted
  - setting:
      IZ_Partname2709: enum-placeholder
  - policy_class: User
