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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Local Machine Zone Lockdown Security\IESF_PolicyExplorerProcesses_4.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# Internet Explorer places zone restrictions on each Web page it opens, which are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, etc.). Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone.
# 
# Local Machine zone security applies to all local files and content processed by Internet Explorer. This feature helps to mitigate attacks where the Local Machine zone is used as an attack vector to load malicious HTML code.
# 
# If you enable this policy setting, the Local Machine zone security applies to all local files and content processed by Internet Explorer.
# 
# If you disable this policy setting, Local Machine zone security is not applied to local files or content processed by Internet Explorer.
# 
# If you do not configure this policy setting, the Local Machine zone security applies to all local files and content processed by Internet Explorer.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_4
  - setting: Enabled
  - policy_class: User
