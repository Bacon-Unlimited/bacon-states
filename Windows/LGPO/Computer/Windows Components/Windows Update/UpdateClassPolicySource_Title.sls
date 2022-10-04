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
# LOCATION: \Computer\Windows Components\Windows Update\UpdateClassPolicySource_Title.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Windows_Server_2022_Windows_10_0_2004
#
# When this policy is enabled, devices will receive Windows updates for the classes listed from the specified update source: either Windows Update or Windows Server Update Service. 
# 
#         Note: To receive any updates from the Windows Server Update Service you must have properly configured an intranet Microsoft update service location via the "Specify intranet Microsoft update service location" policy.
# 
#         If this policy is not configured or is disabled, the device will continue to detect updates per your other policy configurations. 
# 
#         Note: If you are using "Do not allow deferral policies to cause scans against Windows Update" currently to ensure devices only scan against your specified server, we recommend configuring this policy instead or in addition to such.
Specify source service for specific classes of Windows Updates:
  lgpo.set:
  - name: UpdateClassPolicySource_Title
  - setting:
      CorpWUSetPolicyDrivenUpdateSourceForDriverUpdates: enum-placeholder
      CorpWUSetPolicyDrivenUpdateSourceForFeatureUpdates: enum-placeholder
      CorpWUSetPolicyDrivenUpdateSourceForOtherUpdates: enum-placeholder
      CorpWUSetPolicyDrivenUpdateSourceForQualityUpdates: enum-placeholder
  - policy_class: Machine
