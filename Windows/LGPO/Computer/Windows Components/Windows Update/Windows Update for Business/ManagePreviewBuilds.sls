# windows:SUPPORTED_Windows_10_0_RS3
#
# Selecting "Disable preview builds" will prevent preview builds from installing on the device. This will prevent users from opting into the Windows Insider Program, through Settings -> Update and Security.
# 
# Selecting "Disable preview builds once next release is public" will prevent preview builds from installing once the next Windows release is public. This option is useful when your device is set up to install preview and you want to gracefully opt out the device for flighting. This option will provide preview builds until devices reaches the next public release.
# 
# Selecting "Enable preview builds" will enable preview builds installation on the device. Users can download and install Windows preview builds on their devices by opting-in through Settings -> Update and Security -> Windows Insider Program. Admins can also use other policies to manage flight settings on behalf of users when this value is set.
Manage preview builds:
  lgpo.set:
  - name: ManagePreviewBuilds
  - setting:
      ManagePreviewBuildsId: enum-placeholder
  - policy_class: Machine
