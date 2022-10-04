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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Object Caching Protection\IESF_PolicyExplorerProcesses_7.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting defines whether a reference to an object is accessible when the user navigates within the same domain or to a new domain.
# 
# If you enable this policy setting, an object reference is no longer accessible when navigating within or across domains for Internet Explorer processes.
# 
# If you disable this policy setting, an object reference is retained when navigating within or across domains for Internet Explorer processes.
# 
# If you do not configure this policy setting, an object reference is no longer accessible when navigating within or across domains for Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_7
  - setting: Enabled
  - policy_class: User
