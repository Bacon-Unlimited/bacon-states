# windows:SUPPORTED_Windows_10_0
#
# This security feature provides a global setting to prevent programs from loading untrusted fonts. Untrusted fonts are any font installed outside of the %windir%\Fonts directory. This feature can be configured to be in 3 modes: On, Off, and Audit. By default, it is Off and no fonts are blocked. If you aren't quite ready to deploy this feature into your organization, you can run it in Audit mode to see if blocking untrusted fonts causes any usability or compatibility issues.
Untrusted Font Blocking:
  lgpo.set:
  - name: FontMitigation
  - setting:
      FontMitigation_DL: enum-placeholder
  - policy_class: Machine
