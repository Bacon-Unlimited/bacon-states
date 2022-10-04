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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Multimedia\ShowPictures.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting specifies whether graphical images are included when pages are displayed.
# 
# Sometimes, pages that contain several graphical images are displayed very slowly. If you want to display pages more quickly, you can turn off image display.
# 
# If you enable this policy setting, images do not appear. The user cannot turn on image display. However, the user can still display an individual image by right-clicking the icon that represents the image and then clicking Show Picture. The "Allow the display of image download placeholders" policy setting must be disabled if this policy setting is enabled.
# 
# If you disable this policy setting, images appear. The user cannot turn off image display.
# 
# If you do not configure this policy setting, the user can turn on or turn off image display.
Turn off image display:
  lgpo.set:
  - name: ShowPictures
  - setting: Enabled
  - policy_class: User
