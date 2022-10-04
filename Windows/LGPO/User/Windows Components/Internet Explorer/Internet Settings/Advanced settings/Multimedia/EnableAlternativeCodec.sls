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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Multimedia\EnableAlternativeCodec.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy setting specifies whether Internet Explorer plays media files that use alternative codecs and that require additional software.
# 
# If you enable this policy setting, Internet Explorer plays these files, if the appropriate software is installed.
# 
# If you disable this policy setting, Internet Explorer does not play these files.
# 
# If you do not configure this policy setting, the user can change the "Enable alternative codecs in HTML5 media elements" setting on the Advanced tab in the Internet Options dialog box.
Allow Internet Explorer to play media files that use alternative codecs:
  lgpo.set:
  - name: EnableAlternativeCodec
  - setting: Enabled
  - policy_class: User
