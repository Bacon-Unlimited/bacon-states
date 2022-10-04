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
# LOCATION: \User\Windows Components\Windows Media Player\Playback\EnableScreenSaver.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows a screen saver to interrupt playback.
# 
# If you enable this policy setting, a screen saver is displayed during playback of digital media according to the options selected on the Screen Saver tab in the Display Properties dialog box in Control Panel. The Allow screen saver during playback check box on the Player tab in the Player is selected and is not available.
# 
# If you disable this policy setting, a screen saver does not interrupt playback even if users have selected a screen saver. The Allow screen saver during playback check box is cleared and is not available.
# 
# If you do not configure this policy setting, users can change the setting for the Allow screen saver during playback check box.
Allow Screen Saver:
  lgpo.set:
  - name: EnableScreenSaver
  - setting: Enabled
  - policy_class: User
