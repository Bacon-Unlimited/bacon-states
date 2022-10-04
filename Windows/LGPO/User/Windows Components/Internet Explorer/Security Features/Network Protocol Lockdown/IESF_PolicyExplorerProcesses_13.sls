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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Network Protocol Lockdown\IESF_PolicyExplorerProcesses_13.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# File Explorer and Internet Explorer may be configured to prevent active content obtained through restricted protocols from running in an unsafe manner. This policy setting controls whether restricting content obtained through restricted protocols is prevented or allowed.
# 
# If you enable this policy setting, restricting content obtained through restricted protocols is allowed for File Explorer and Internet Explorer processes. For example, you can restrict active content from pages served over the http and https protocols by adding the value names http and https.
# 
# If you disable this policy setting, restricting content obtained through restricted protocols is prevented for File Explorer and Internet Explorer processes.
# 
# If you do not configure this policy setting, the policy setting is ignored.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_13
  - setting: Enabled
  - policy_class: User
