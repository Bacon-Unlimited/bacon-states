# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting determines whether Microsoft Defender Application Guard renders graphics using hardware or software acceleration.
# 
# If you enable this setting, Microsoft Defender Application Guard uses Hyper-V to access supported, high-security rendering graphics hardware (GPUs). These GPUs improve rendering performance and battery life while using Microsoft Defender Application Guard, particularly for video playback and other graphics-intensive use cases. If you enable this setting without connecting any high-security rendering graphics hardware, Microsoft Defender Application Guard will automatically revert to software-based (CPU) rendering.
# 
# Note:
# Be aware that enabling this setting with potentially compromised graphics devices or drivers might pose a risk to the host device.
# 
# If you disable or dont configure this setting, Microsoft Defender Application Guard uses software-based (CPU) rendering and wont load any third-party graphics drivers or interact with any connected graphics hardware.
#         
Allow hardware-accelerated rendering for Microsoft Defender Application Guard:
  lgpo.set:
  - name: AppHVSI_AllowVirtualGPU
  - setting: Enabled
  - policy_class: Machine
