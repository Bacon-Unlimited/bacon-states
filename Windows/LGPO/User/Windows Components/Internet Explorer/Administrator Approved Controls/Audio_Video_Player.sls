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
# LOCATION: \User\Windows Components\Internet Explorer\Administrator Approved Controls\Audio_Video_Player.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Designates the Audio/Video Player ActiveX control as administrator-approved.
# 
# This control is used for playing sounds, videos, and other media.
# 
# If you enable this policy, this control can be run in security zones in which you specify that administrator-approved controls can be run.
# 
# If you disable this policy or do not configure it, this control will not be designated as administrator-approved.
# 
# To specify how administrator-approved controls are handled for each security zone, carry out the following steps:
# 
# 1. In Group Policy, click User Configuration, click Internet Explorer Maintenance, and then click Security.
# 
# 2. Double-click Security Zones and Content Ratings, click Import the Current Security Zones Settings, and then click Modify Settings.
# 
# 3. Select the content zone in which you want to manage ActiveX controls, and then click Custom Level.
# 
# 4. In the Run ActiveX Controls and Plug-ins area, click Administrator Approved.
Audio/Video Player:
  lgpo.set:
  - name: Audio_Video_Player
  - setting:
      ActiveMovie_Control: boolean-placeholder
      Media_Control: boolean-placeholder
  - policy_class: User
