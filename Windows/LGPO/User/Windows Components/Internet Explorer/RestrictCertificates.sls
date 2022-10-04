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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictCertificates.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from changing certificate settings in Internet Explorer. Certificates are used to verify the identity of software publishers.
# 
# If you enable this policy, the settings in the Certificates area on the Content tab in the Internet Options dialog box appear dimmed.
# 
# If you disable this policy or do not configure it, users can import new certificates, remove approved publishers, and change settings for certificates that have already been accepted.
# 
# The "Disable the Content page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Content tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
# 
# Caution: If you enable this policy, users can still run the Certificate Manager Import Wizard by double-clicking a software publishing certificate (.spc) file. This wizard enables users to import and configure settings for certificates from software publishers that haven't already been configured for Internet Explorer.
Disable changing certificate settings:
  lgpo.set:
  - name: RestrictCertificates
  - setting: Enabled
  - policy_class: User
