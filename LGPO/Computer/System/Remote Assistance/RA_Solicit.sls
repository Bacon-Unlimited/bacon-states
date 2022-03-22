# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to turn on or turn off Solicited (Ask for) Remote Assistance on this computer.
# 
# If you enable this policy setting, users on this computer can use email or file transfer to ask someone for help. Also, users can use instant messaging programs to allow connections to this computer, and you can configure additional Remote Assistance settings.
# 
# If you disable this policy setting, users on this computer cannot use email or file transfer to ask someone for help. Also, users cannot use instant messaging programs to allow connections to this computer.
# 
# If you do not configure this policy setting, users can turn on or turn off Solicited (Ask for) Remote Assistance themselves in System Properties in Control Panel. Users can also configure Remote Assistance settings.
# 
# If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer."
# 
# The "Maximum ticket time" policy setting sets a limit on the amount of time that a Remote Assistance invitation created by using email or file transfer can remain open.
# 
# The "Select the method for sending email invitations" setting specifies which email standard to use to send Remote Assistance invitations. Depending on your email program, you can use either the Mailto standard (the invitation recipient connects through an Internet link) or the SMAPI (Simple MAPI) standard (the invitation is attached to your email message). This policy setting is not available in Windows Vista since SMAPI is the only method supported.
# 
# If you enable this policy setting you should also enable appropriate firewall exceptions to allow Remote Assistance communications.
Configure Solicited Remote Assistance:
  lgpo.set:
  - name: RA_Solicit
  - setting:
      RA_Solicit_Control_List: enum-placeholder
      RA_Solicit_ExpireUnits_List: enum-placeholder
      RA_Solicit_ExpireValue_Edt: decimal-placeholder
      RA_Solicit_Mailto_List: enum-placeholder
  - policy_class: Machine
