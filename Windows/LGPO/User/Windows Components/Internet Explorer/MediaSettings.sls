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
# LOCATION: \User\Windows Components\Internet Explorer\MediaSettings.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6ONLY
#
# Allows Administrators to enable and disable the Media Explorer Bar and set the auto-play default.
# 
# The Media Explorer Bar plays music and video content from the Internet.
# 
# If you disable the Media explorer bar, users cannot display the Media Explorer Bar.  The auto-play feature is also disabled.  When users click on a link within Internet Explorer, the content will be played by the default media client on their system.
# 
# If you enable the Media Explorer Bar or do not configure it, users can show and hide the Media Explorer Bar.
# 
# Administrators also have the ability to turn the auto-play feature on or off.  This setting only applies if the Media Explorer Bar is enabled.
# 
# If checked, the Media Explorer Bar will automatically display and play the media content when the user clicks on a media link.
# 
# If unchecked, the content will be played by the default media client on their system.
Configure Media Explorer Bar:
  lgpo.set:
  - name: MediaSettings
  - setting:
      BlockMedia: boolean-placeholder
      PlayByDefault: boolean-placeholder
  - policy_class: User
