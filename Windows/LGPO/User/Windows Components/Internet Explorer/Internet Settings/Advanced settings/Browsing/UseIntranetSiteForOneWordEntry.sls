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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing\UseIntranetSiteForOneWordEntry.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy allows the user to go directly to an intranet site for a one-word entry in the Address bar.
# 
# If you enable this policy setting, Internet Explorer goes directly to an intranet site for a one-word entry in the Address bar, if it is available.
# 
# If you disable or do not configure this policy setting, Internet Explorer does not go directly to an intranet site for a one-word entry in the Address bar.
Go to an intranet site for a one-word entry in the Address bar:
  lgpo.set:
  - name: UseIntranetSiteForOneWordEntry
  - setting: Enabled
  - policy_class: User
