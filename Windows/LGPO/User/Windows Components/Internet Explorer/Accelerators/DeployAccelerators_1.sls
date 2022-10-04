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
# LOCATION: \User\Windows Components\Internet Explorer\Accelerators\DeployAccelerators_1.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to add non-default Accelerators.
# 
# If you enable this policy setting, the specified Accelerators are added to the user's browser. The user can append other Accelerators to this list, but the user cannot remove or change the Accelerators that this policy setting has added. Default and non-default Accelerators should not overlap.
# 
# If you disable or do not configure this policy setting, the user has Accelerators that are provided through first use of the browser.
Add non-default Accelerators:
  lgpo.set:
  - name: DeployAccelerators_1
  - setting:
      DeployAcceleratorsInstall:
      - placeholder1
      - placeholder2
  - policy_class: User
