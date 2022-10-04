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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\MK Protocol Security Restriction\IESF_PolicyProcessList_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# The MK Protocol Security Restriction policy setting reduces attack surface area by preventing the MK protocol. Resources hosted on the MK protocol will fail.
# 
# This policy setting allows administrators to define applications for which they want this security feature to be prevented or allowed.
# 
# If you enable this policy setting and enter a Value of 1, use of the MK protocol is prevented. If you enter a Value of 0, use of the MK protocol is allowed. If a Value Name is empty or the Value is not 0 or 1, the policy setting is ignored.
# 
# Do not enter the Internet Explorer processes in this list: use the related Internet Explorer Processes policy to enable or disable IE processes. If the All Processes policy setting is enabled, the processes configured in this box take precedence over that setting.
# 
# If you disable or do not configure this policy setting, the policy setting is ignored.
Process List:
  lgpo.set:
  - name: IESF_PolicyProcessList_3
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: User
