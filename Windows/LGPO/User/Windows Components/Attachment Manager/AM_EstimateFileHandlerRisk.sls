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
# LOCATION: \User\Windows Components\Attachment Manager\AM_EstimateFileHandlerRisk.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to configure the logic that Windows uses to determine the risk for file attachments.
# 
# Preferring the file handler instructs Windows to use the file handler data over the file type data. For example, trust notepad.exe, but don't trust .txt files.
# 
# Preferring the file type instructs Windows to use the file type data over the file handler data. For example, trust .txt files, regardless of the file handler.
# 
# Using both the file handler and type data is the most restrictive option. Windows chooses the more restrictive recommendation which will cause users to see more trust prompts than choosing the other options.
# 
# If you enable this policy setting, you can choose the order in which Windows processes risk assessment data.
# 
# If you disable this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.
# 
# If you do not configure this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.
Trust logic for file attachments:
  lgpo.set:
  - name: AM_EstimateFileHandlerRisk
  - setting:
      AM_TrustLogicSetting: enum-placeholder
  - policy_class: User
