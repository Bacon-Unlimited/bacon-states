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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Protection From Zone Elevation\IESF_PolicyExplorerProcesses_9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# Internet Explorer places restrictions on each Web page it opens. The restrictions are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, etc.). Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone, making the Local Machine security zone a prime target for malicious users. Zone Elevation also disables JavaScript navigation if there is no security context.
# 
# If you enable this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.
# 
# If you disable this policy setting, no zone receives such protection for Internet Explorer processes.
# 
# If you do not configure this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_9
  - setting: Enabled
  - policy_class: User
