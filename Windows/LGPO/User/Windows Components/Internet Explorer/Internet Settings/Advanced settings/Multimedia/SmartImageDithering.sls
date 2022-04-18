# SUPPORTED_IE7
#
# This policy setting specifies whether you want Internet Explorer to smooth images so that they appear less jagged when displayed.
# 
# If you enable this policy setting, smart image dithering is turned off. The user cannot turn it on.
# 
# If you disable this policy setting, smart image dithering is turned on. The user cannot turn it off.
# 
# If you do not configure this policy setting, the user can turn on or turn off smart image dithering.
Turn off smart image dithering:
  lgpo.set:
  - name: SmartImageDithering
  - setting: Enabled
  - policy_class: User
