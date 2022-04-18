# windows:SUPPORTED_Win2k
#
# This policy setting saves copies of transform files in a secure location on the local computer.
# 
# Transform files consist of instructions to modify or customize a program during installation.
# 
# If you enable this policy setting, the transform file is saved in a secure location on the user's computer.
# 
# If you do not configure this policy setting on Windows Server 2003, Windows Installer requires the transform file in order to repeat an installation in which the transform file was used, therefore, the user must be using the same computer or be connected to the original or identical media to reinstall, remove, or repair the installation.
# 
# This policy setting is designed for enterprises to prevent unauthorized or malicious editing of transform files.
# 
# If you disable this policy setting, Windows Installer stores transform files in the Application Data directory in the user's profile.
# 
# If you do not configure this policy setting on Windows 2000 Professional, Windows XP Professional and Windows Vista, when a user reinstalls, removes, or repairs an installation, the transform file is available, even if the user is on a different computer or is not connected to the network.
Save copies of transform files in a secure location on workstation:
  lgpo.set:
  - name: TransformsSecure
  - setting: Enabled
  - policy_class: Machine
