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
# LOCATION: \Computer\Windows Components\Windows Media Player\DontUseFrameInterpolation.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows you to prevent video smoothing from occurring.
# 
# If you enable this policy setting, video smoothing is prevented, which can improve video playback on computers with limited resources. In addition, the Use Video Smoothing check box in the Video Acceleration Settings dialog box in the Player is cleared and is not available.
# 
# If you disable this policy setting, video smoothing occurs if necessary, and the Use Video Smoothing check box is selected and is not available.
# 
# If you do not configure this policy setting, video smoothing occurs if necessary. Users can change the setting for the Use Video Smoothing check box.
# 
# Video smoothing is available only on the Windows XP Home Edition and Windows XP Professional operating systems.
Prevent Video Smoothing:
  lgpo.set:
  - name: DontUseFrameInterpolation
  - setting: Enabled
  - policy_class: Machine
