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
# LOCATION: \User\System\RestrictRunFromHelp.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# 
#         This policy setting allows you to restrict programs from being run from online Help.
#         
#         If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names names of the programs you want to restrict, separated by commas.
#         
#         If you disable or do not configure this policy setting, users can run all applications from online Help.
#         
#         Note: You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.
#         
#         Note: This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations cannot launched from Help
#       
Restrict these programs from being launched from Help:
  lgpo.set:
  - name: RestrictRunFromHelp
  - setting:
      RestrictRunFromHelp_Edit: text-placeholder
  - policy_class: User
