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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\Add-on Management\IESF_PolicyProcessList_13.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether the listed processes respect add-on management user preferences (as entered into Add-on Manager) or policy settings. By default, only Internet Explorer processes use the add-on management user preferences and policy settings. This policy setting allows you to extend support for these user preferences and policy settings to specific processes listed in the process list.
# 
# If you enable this policy setting and enter a Value of 1, the process entered will respect the add-on management user preferences and policy settings. If you enter a Value of 0, the add-on management user preferences and policy settings are ignored by the specified process. The Value Name is the name of the executable. If a Value Name is empty or the Value is not 0 or 1, the policy setting is ignored.
# 
# Do not enter Internet Explorer processes in this list because these processes always respect add-on management user preferences and policy settings. If the All Processes policy setting is enabled, the processes configured in this policy setting take precedence over that setting.
# 
# If you do not configure this policy, processes other than the Internet Explorer processes will not be affected by add-on management user preferences or policy settings (unless "All Processes" is enabled).
Process List:
  lgpo.set:
  - name: IESF_PolicyProcessList_13
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
