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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Licensing\TS_LICENSE_SERVERS.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Win2k3_Sp1
#
# This policy setting allows you to specify the order in which an RD Session Host server attempts to locate Remote Desktop license servers.
# 
# If you enable this policy setting, an RD Session Host server first attempts to locate the specified license servers. If the specified license servers cannot be located, the RD Session Host server will attempt automatic license server discovery. In the automatic license server discovery process, an RD Session Host server in a Windows Server-based domain attempts to contact a license server in the following order:
# 
#     1. Remote Desktop license servers that are published in Active Directory Domain Services.
# 
#     2. Remote Desktop license servers that are installed on domain controllers in the same domain as the RD Session Host server.
# 
# If you disable or do not configure this policy setting, the RD Session Host server does not specify a license server at the Group Policy level.
# 
Use the specified Remote Desktop license servers:
  lgpo.set:
  - name: TS_LICENSE_SERVERS
  - setting:
      TS_LICENSE_EDIT: text-placeholder
  - policy_class: Machine
