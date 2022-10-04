####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Windows Update\Windows Update for Business\ManagePreviewBuilds.sls
#
# SUPPORTED WINDOWS OS
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
