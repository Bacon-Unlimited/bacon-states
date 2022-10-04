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
# LOCATION: \Computer\System\Net Logon\Netlogon_SiteName.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the Active Directory site to which computers belong.
# 
# An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.
# 
# To specify the site name for this setting, click Enabled, and then enter the site name. When the site to which a computer belongs is not specified, the computer automatically discovers its site from Active Directory.
# 
# If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.
Specify site name:
  lgpo.set:
  - name: Netlogon_SiteName
  - setting:
      Netlogon_SiteNameLabel: text-placeholder
  - policy_class: Machine
