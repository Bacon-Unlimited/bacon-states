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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\IZ_PolicySubmitNonencryptedFormData_5.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether data on HTML forms on pages in the zone may be submitted. Forms sent with SSL (Secure Sockets Layer) encryption are always allowed; this setting only affects non-SSL form data submission.
# 
# If you enable this policy setting, information using HTML forms on pages in this zone can be submitted automatically. If you select Prompt in the drop-down box, users are queried to choose whether to allow information using HTML forms on pages in this zone to be submitted.
# 
# If you disable this policy setting, information using HTML forms on pages in this zone is prevented from being submitted.
# 
# If you do not configure this policy setting, information using HTML forms on pages in this zone can be submitted automatically.
Submit non-encrypted form data:
  lgpo.set:
  - name: IZ_PolicySubmitNonencryptedFormData_5
  - setting:
      IZ_Partname1601: enum-placeholder
  - policy_class: User
