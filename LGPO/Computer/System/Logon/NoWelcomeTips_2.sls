# windows:SUPPORTED_Win2kOnly
#
# This policy setting hides the welcome screen that is displayed on Windows 2000 Professional each time the user logs on.
# 
# If you enable this policy setting, the welcome screen is hidden from the user logging on to a computer where this policy is applied.
# 
# Users can still display the welcome screen by selecting it on the Start menu or by typing ""Welcome"" in the Run dialog box.
# 
# If you disable or do not configure this policy, the welcome screen is displayed each time a user logs on to the computer.
# 
# This setting applies only to Windows 2000 Professional. It does not affect the ""Configure Your Server on a Windows 2000 Server"" screen on Windows 2000 Server.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To display the welcome screen, click Start, point to Programs, point to Accessories, point to System Tools, and then click ""Getting Started."" To suppress the welcome screen without specifying a setting, clear the ""Show this screen at startup"" check box on the welcome screen.
Do not display the Getting Started welcome screen at logon:
  lgpo.set:
  - name: NoWelcomeTips_2
  - setting: Enabled
  - policy_class: Machine
