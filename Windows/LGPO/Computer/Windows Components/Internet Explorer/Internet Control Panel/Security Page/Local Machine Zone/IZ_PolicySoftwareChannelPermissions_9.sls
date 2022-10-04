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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\IZ_PolicySoftwareChannelPermissions_9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2_IE7
#
# This policy setting allows you to manage software channel permissions.
# 
# If you enable this policy setting, you can choose the following options from the drop-down box.
# 
# Low safety to allow users to be notified of software updates by e-mail, software packages to be automatically downloaded to users' computers, and software packages to be automatically installed on users' computers.
# 
# Medium safety to allow users to be notified of software updates by e-mail and software packages to be automatically downloaded to (but not installed on) users' computers.
# 
# High safety to prevent users from being notified of software updates by e-mail, software packages from being automatically downloaded to users' computers, and software packages from being automatically installed on users' computers.
# 
# If you disable this policy setting, permissions are set to high safety.
# 
# If you do not configure this policy setting, permissions are set to Low safety.
Software channel permissions:
  lgpo.set:
  - name: IZ_PolicySoftwareChannelPermissions_9
  - setting:
      IZ_Partname1E05: enum-placeholder
  - policy_class: Machine
