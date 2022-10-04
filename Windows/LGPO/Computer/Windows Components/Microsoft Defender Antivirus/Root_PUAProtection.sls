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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Root_PUAProtection.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS1
#
# 
#         Enable or disable detection for potentially unwanted applications. You can choose to block, audit, or allow when potentially unwanted software is being downloaded or attempts to install itself on your computer.
# 
#         Enabled:
#         Specify the mode in the Options section:
#         -Block: Potentially unwanted software will be blocked.
#         -Audit Mode: Potentially unwanted software will not be blocked, however if this feature would have blocked access if it were set to Block, then a record of the event will be in the event logs.
# 
#         Disabled:
#         Potentially unwanted software will not be blocked.
# 
#         Not configured:
#         Same as Disabled.
#     
Configure detection for potentially unwanted applications:
  lgpo.set:
  - name: Root_PUAProtection
  - setting:
      Root_PUAProtection: enum-placeholder
  - policy_class: Machine
