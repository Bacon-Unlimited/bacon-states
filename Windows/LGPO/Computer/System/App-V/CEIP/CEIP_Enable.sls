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
# LOCATION: \Computer\System\App-V\CEIP\CEIP_Enable.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# The program collects information about computer hardware and how you use Microsoft Application Virtualization without interrupting you. This helps Microsoft identify which Microsoft Application Virtualization features to improve. No information collected is used to identify or contact you. 
# 
# For more details, read about the program online at http://go.microsoft.com/fwlink/?LinkID=184686.
Microsoft Customer Experience Improvement Program (CEIP):
  lgpo.set:
  - name: CEIP_Enable
  - setting: Enabled
  - policy_class: Machine
