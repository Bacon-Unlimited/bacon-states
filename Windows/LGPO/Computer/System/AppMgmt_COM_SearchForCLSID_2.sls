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
# LOCATION: \Computer\System\AppMgmt_COM_SearchForCLSID_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting directs the system to search Active Directory for missing Component Object Model (COM) components that a program requires.
# 
# Many Windows programs, such as the MMC snap-ins, use the interfaces provided by the COM components. These programs cannot perform all their functions unless Windows has internally registered the required components.
# 
# If you enable this policy setting and a component registration is missing, the system searches for it in Active Directory and, if it is found, downloads it. The resulting searches might make some programs start or run slowly.
# 
# If you disable or do not configure this policy setting, the program continues without the registration. As a result, the program might not perform all its functions, or it might stop.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in  User Configuration.
Download missing COM components:
  lgpo.set:
  - name: AppMgmt_COM_SearchForCLSID_2
  - setting: Enabled
  - policy_class: Machine
