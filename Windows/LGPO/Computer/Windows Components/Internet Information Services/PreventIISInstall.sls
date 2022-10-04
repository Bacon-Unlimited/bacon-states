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
# LOCATION: \Computer\Windows Components\Internet Information Services\PreventIISInstall.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNETOnly
#
# "This policy setting prevents installation of Internet Information Services (IIS) on this computer. If you enable this policy setting, Internet Information Services (IIS) cannot be installed, and you will not be able to install Windows components or applications that require IIS. Users installing Windows components or applications that require IIS might not receive a warning that IIS cannot be installed because of this Group Policy setting. Enabling this setting will not have any effect on IIS if IIS is already installed on the computer. If you disable or do not configure this policy setting, IIS can be installed, as well as all the programs and applications that require IIS to run."
Prevent IIS installation:
  lgpo.set:
  - name: PreventIISInstall
  - setting: Enabled
  - policy_class: Machine
