# windows:SUPPORTED_WindowsNETOnly
#
# "This policy setting prevents installation of Internet Information Services (IIS) on this computer. If you enable this policy setting, Internet Information Services (IIS) cannot be installed, and you will not be able to install Windows components or applications that require IIS. Users installing Windows components or applications that require IIS might not receive a warning that IIS cannot be installed because of this Group Policy setting. Enabling this setting will not have any effect on IIS if IIS is already installed on the computer. If you disable or do not configure this policy setting, IIS can be installed, as well as all the programs and applications that require IIS to run."
Prevent IIS installation:
  lgpo.set:
  - name: PreventIISInstall
  - setting: Enabled
  - policy_class: Machine
