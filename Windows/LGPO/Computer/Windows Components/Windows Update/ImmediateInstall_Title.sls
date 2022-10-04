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
# LOCATION: \Computer\Windows Components\Windows Update\ImmediateInstall_Title.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Win2kSP3_Or_XPSP1_Through_Win81_or_Server2012R2
#
# Specifies whether Automatic Updates should automatically install certain updates that neither interrupt Windows services nor restart Windows.
# 
# If the status is set to Enabled, Automatic Updates will immediately install these updates once they are downloaded and ready to install.
# 
# If the status is set to Disabled, such updates will not be installed immediately.
# 
# Note: If the "Configure Automatic Updates" policy is disabled, this policy has no effect.
Allow Automatic Updates immediate installation:
  lgpo.set:
  - name: ImmediateInstall_Title
  - setting: Enabled
  - policy_class: Machine
