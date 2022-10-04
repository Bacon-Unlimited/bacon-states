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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\ControlPanel_RestrictProgramsTab.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Removes the Programs tab from the interface in the Internet Options dialog box.
# 
# If you enable this policy, users are prevented from seeing and changing default settings for Internet programs.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
# 
# When you set this policy, you do not need to set the following policies for the Programs tab, because this policy removes the Programs tab from the interface:
# 
# "Disable changing Messaging settings"
# 
# "Disable changing Calendar and Contact settings"
# 
# "Disable the Reset Web Settings feature"
# 
# "Disable changing default browser check"
Disable the Programs page:
  lgpo.set:
  - name: ControlPanel_RestrictProgramsTab
  - setting: Enabled
  - policy_class: Machine
