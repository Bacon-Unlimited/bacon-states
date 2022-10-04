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
# LOCATION: \Computer\Windows Components\Windows Update\TrustedPublisher_Title.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_WindowsXPSP1_NoWinRT
#
# This policy setting allows you to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.
# 
# If you enable this policy setting, Automatic Updates accepts updates received through an intranet Microsoft update service location, if they are signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.
# 
# If you disable or do not configure this policy setting, updates from an intranet Microsoft update service location must be signed by Microsoft.
# 
# Note: Updates from a service other than an intranet Microsoft update service must always be signed by Microsoft and are not affected by this policy setting.
# Note: This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.
'Allow signed updates from an intranet Microsoft update service location ':
  lgpo.set:
  - name: TrustedPublisher_Title
  - setting: Enabled
  - policy_class: Machine
