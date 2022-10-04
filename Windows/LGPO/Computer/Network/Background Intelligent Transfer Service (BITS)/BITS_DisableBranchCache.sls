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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_DisableBranchCache.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Windows7OrBITS35
#
# This setting affects whether the BITS client is allowed to use Windows Branch Cache. If the Windows Branch Cache component is installed and enabled on a computer, BITS jobs on that computer can use Windows Branch Cache by default.
# 
#           If you enable this policy setting, the BITS client does not use Windows Branch Cache.
# 
#           If you disable or do not configure this policy setting, the BITS client uses Windows Branch Cache.
# 
#           Note: This policy setting does not affect the use of Windows Branch Cache by applications other than BITS. This policy setting does not apply to BITS transfers over SMB. This setting has no effect if the computer's administrative settings for Windows Branch Cache disable its use entirely.
#       
Do not allow the BITS client to use Windows Branch Cache:
  lgpo.set:
  - name: BITS_DisableBranchCache
  - setting: Enabled
  - policy_class: Machine
