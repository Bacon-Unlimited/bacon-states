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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictConnectionWizard.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from running the Internet Connection Wizard.
# 
# If you enable this policy, the Setup button on the Connections tab in the Internet Options dialog box appears dimmed.
# 
# Users will also be prevented from running the wizard by clicking the Connect to the Internet icon on the desktop or by clicking Start, pointing to Programs, pointing to Accessories, pointing to Communications, and then clicking Internet Connection Wizard.
# 
# If you disable this policy or do not configure it, users can change their connection settings by running the Internet Connection Wizard.
# 
# Note: This policy overlaps with the "Disable the Connections page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Connections tab from the interface. Removing the Connections tab from the interface, however, does not prevent users from running the Internet Connection Wizard from the desktop or the Start menu.
Disable Internet Connection wizard:
  lgpo.set:
  - name: RestrictConnectionWizard
  - setting: Enabled
  - policy_class: User
