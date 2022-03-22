# edge:SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you configure whether to turn on Windows Defender SmartScreen. Windows Defender SmartScreen provides warning messages to help protect your employees from potential phishing scams and malicious software. By default, Windows Defender SmartScreen is turned on.
# 
# If you enable this setting, Windows Defender SmartScreen is turned on and employees can't turn it off.
# 
# If you disable this setting, Windows Defender SmartScreen is turned off and employees can't turn it on.
# 
# If you don't configure this setting, employees can choose whether to use Windows Defender SmartScreen.
Configure Windows Defender SmartScreen:
  lgpo.set:
  - name: EdgeConfigureSmartScreen
  - setting: Enabled
  - policy_class: User
