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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\IZ_Policy_LocalPathForUpload_9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting controls whether or not local path information is sent when the user is uploading a file via an HTML form. If the local path information is sent, some information may be unintentionally revealed to the server. For instance, files sent from the user's desktop may contain the user name as a part of the path.
# 
# If you enable this policy setting, path information is sent when the user is uploading a file via an HTML form.
# 
# If you disable this policy setting, path information is removed when the user is uploading a file via an HTML form.
# 
# If you do not configure this policy setting, the user can choose whether path information is sent when he or she is uploading a file via an HTML form. By default, path information is sent.
Include local path when user is uploading files to a server:
  lgpo.set:
  - name: IZ_Policy_LocalPathForUpload_9
  - setting:
      IZ_Partname160A: enum-placeholder
  - policy_class: User
