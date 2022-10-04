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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Connection Client\TS_PROMT_CREDS_CLIENT_COMP.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Vista_SP1
#
# This policy setting determines whether a user will be prompted on the client computer to provide credentials for a remote connection to an RD Session Host server.
# 
# If you enable this policy setting, a user will be prompted on the client computer instead of on the RD Session Host server to provide credentials for a remote connection to an RD Session Host server. If saved credentials for the user are available on the client computer, the user will not be prompted to provide credentials.
# 
# Note: If you enable this policy setting in releases of Windows Server 2008 R2 with SP1 or Windows Server 2008 R2, and a user is prompted on both the client computer and on the RD Session Host server to provide credentials, clear the Always prompt for password check box on the Log on Settings tab in Remote Desktop Session Host Configuration.
# 
# If you disable or do not configure this policy setting, the version of the operating system on the RD Session Host server will determine when a user is prompted to provide credentials for a remote connection to an RD Session Host server.  For Windows Server 2003 and Windows 2000 Server a user will be prompted on the terminal server to provide credentials for a remote connection. For Windows Server 2008 and Windows Server 2008 R2, a user will be prompted on the client computer to provide credentials for a remote connection.
# 
Prompt for credentials on the client computer:
  lgpo.set:
  - name: TS_PROMT_CREDS_CLIENT_COMP
  - setting: Enabled
  - policy_class: Machine
