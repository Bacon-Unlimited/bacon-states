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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\IZ_PolicyNotificationBarActiveXURLaction_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting manages whether users will be automatically prompted for ActiveX control installations.
# 
# If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.
# 
# If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
# 
# If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.
Automatic prompting for ActiveX controls:
  lgpo.set:
  - name: IZ_PolicyNotificationBarActiveXURLaction_3
  - setting:
      IZ_Partname2201: enum-placeholder
  - policy_class: Machine
