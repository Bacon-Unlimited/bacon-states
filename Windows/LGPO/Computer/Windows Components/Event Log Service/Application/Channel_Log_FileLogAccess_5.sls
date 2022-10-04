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
# LOCATION: \Computer\Windows Components\Event Log Service\Application\Channel_Log_FileLogAccess_5.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect the both modern and legacy tools.
# 
# If you enable this policy setting, only those users matching the security descriptor can access the log.
# 
# If you disable this policy setting, all authenticated users and system services can write, read, or clear this log.
# 
# If you do not configure this policy setting, the previous policy setting configuration remains in effect.
Configure log access (legacy):
  lgpo.set:
  - name: Channel_Log_FileLogAccess_5
  - setting:
      Channel_Log_FileLogAccess: text-placeholder
  - policy_class: Machine
