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
