# SUPPORTED_IE7
#
# This policy setting specifies whether Internet Explorer prints background colors and images when the user prints a webpage. Including background colors and images might reduce the speed at which a page is printed and the quality of the printing, depending on the capabilities of the printer.
# 
# If you enable this policy setting, the printing of background colors and images is turned on. The user cannot turn it off.
# 
# If you disable this policy setting, the printing of background colors and images is turned off. The user cannot turn it on.
# 
# If you do not configure this policy setting, the user can turn on or turn off the printing of background colors and images.
Turn on printing of background colors and images:
  lgpo.set:
  - name: BackgroundColors
  - setting: Enabled
  - policy_class: User
