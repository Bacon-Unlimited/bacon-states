# windows:SUPPORTED_WindowsVista
#
# This policy setting enables Remote Assistance invitations to be generated with improved encryption so that only computers running this version (or later versions) of the operating system can connect. This policy setting does not affect Remote Assistance connections that are initiated by instant messaging contacts or the unsolicited Offer Remote Assistance.
# 
# If you enable this policy setting, only computers running this version (or later versions) of the operating system can connect to this computer.
# 
# If you disable this policy setting, computers running this version and a previous version of the operating system can connect to this computer.
# 
# If you do not configure this policy setting, users can configure the setting in System Properties in the Control Panel.
Allow only Windows Vista or later connections:
  lgpo.set:
  - name: RA_EncryptedTicketOnly
  - setting: Enabled
  - policy_class: Machine
