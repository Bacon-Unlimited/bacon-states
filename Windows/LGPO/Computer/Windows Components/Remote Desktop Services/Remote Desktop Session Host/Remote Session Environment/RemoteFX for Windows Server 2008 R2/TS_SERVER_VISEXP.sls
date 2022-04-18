# TS_SUPPORTED_ONLY_Windows7_OR_SERVER2K8R2
#
# This policy setting allows you to specify the visual experience that remote users receive in Remote Desktop Services sessions. Remote sessions on the remote computer are then optimized to support this visual experience.
# 
# By default, Remote Desktop Services sessions are optimized for rich multimedia, such as applications that use Silverlight or Windows Presentation Foundation.
# 
# If you enable this policy setting, you must select the visual experience for which you want to optimize Remote Desktop Services sessions. You can select either Rich multimedia or Text.
# 
# If you disable or do not configure this policy setting, Remote Desktop Services sessions are optimized for rich multimedia.
#     
Optimize visual experience for Remote Desktop Service Sessions:
  lgpo.set:
  - name: TS_SERVER_VISEXP
  - setting:
      TS_VISEXP_SETTINGS: enum-placeholder
  - policy_class: Machine
