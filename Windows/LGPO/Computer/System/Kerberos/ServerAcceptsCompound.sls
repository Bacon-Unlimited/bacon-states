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
# LOCATION: \Computer\System\Kerberos\ServerAcceptsCompound.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls configuring the device's Active Directory account for compound authentication.
# 
# Support for providing compound authentication which is used for access control will require enough domain controllers in the resource account domains to support the requests. The Domain Administrator must configure the policy "Support Dynamic Access Control and Kerberos armoring" on all the domain controllers to support this policy.
# 
# If you enable this policy setting, the device's Active Directory account will be configured for compound authentication by the following options:
# 
# Never: Compound authentication is never provided for this computer account.
# 
# Automatic: Compound authentication is provided for this computer account when one or more applications are configured for Dynamic Access Control.
# 
# Always: Compound authentication is always provided for this computer account.
# 
# If you disable this policy setting, Never will be used.
# If you do not configure this policy setting, Automatic will be used.
# 
Support compound authentication:
  lgpo.set:
  - name: ServerAcceptsCompound
  - setting:
      CompoundIdEnabled: enum-placeholder
  - policy_class: Machine
