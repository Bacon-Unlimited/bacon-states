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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\Consistent Mime Handling\IESF_PolicyProcessList_5.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# Internet Explorer uses Multipurpose Internet Mail Extensions (MIME) data to determine file handling procedures for files received through a Web server.
# 
# This policy setting determines whether Internet Explorer requires that all file-type information provided by Web servers be consistent. For example, if the MIME type of a file is text/plain but the MIME sniff indicates that the file is really an executable file, Internet Explorer renames the file by saving it in the Internet Explorer cache and changing its extension.
# 
# This policy setting allows administrators to define applications for which they want this security feature to be prevented or allowed.
# 
# If you enable this policy setting and enter a Value of 1, MIME handling is in effect. If you enter a Value of 0 file-type information is allowed to be inconsistent. The Value Name is the name of the executable. If a Value Name is empty or the Value is not 0 or 1, the policy setting is ignored.
# 
# Do not enter the Internet Explorer processes in this list: use the related Internet Explorer Processes policy to enable or disable IE processes. If the All Processes policy setting is enabled, the processes configured in this box take precedence over that setting.
# 
# If you disable or do not configure this policy setting, the security feature is allowed.
Process List:
  lgpo.set:
  - name: IESF_PolicyProcessList_5
  - setting:
      IESF_PartnameProcessList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
