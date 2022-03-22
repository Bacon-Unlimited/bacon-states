# TS_SUPPORTED_Windows7_OR_SERVER2K8R2_SP1
#
# This policy setting allows you to permit RDP redirection of other supported RemoteFX USB devices from this computer. Redirected RemoteFX USB devices will not be available for local usage on this computer.
# 
# If you enable this policy setting, you can choose to give the ability to redirect other supported RemoteFX USB devices over RDP to all users or only to users who are in the Administrators group on the computer.
# 
# If you disable or do not configure this policy setting, other supported RemoteFX USB devices are not available for RDP redirection by using any user account.
# 
# For this change to take effect, you must restart Windows.
# 
#     
Allow RDP redirection of other supported RemoteFX USB devices from this computer:
  lgpo.set:
  - name: TS_USB_REDIRECTION_DISABLE
  - setting:
      UsbAccessRight: enum-placeholder
  - policy_class: Machine
