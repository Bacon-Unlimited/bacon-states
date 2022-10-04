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
# LOCATION: \Computer\Windows Components\Internet Explorer\Corporate Settings\Code Download\CodeDownloadPol.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the code download path for each computer. The Internet Component Download service exposes a function that is called by an application to download, verify, and install code for an Object Linking and Embedding (OLE) component.
# 
# If you enable this policy setting, the user cannot specify the download path for the code. You must specify the download path.
# 
# If you disable or do not configure this policy setting, the user can specify the download path for the code.
Prevent specifying the code download path for each computer:
  lgpo.set:
  - name: CodeDownloadPol
  - setting:
      Path: text-placeholder
  - policy_class: Machine
