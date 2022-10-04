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
# LOCATION: \Computer\Network\DNS Client\DNS_RegistrationOverwritesInConflict.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOnly
#
# Specifies whether dynamic updates should overwrite existing resource records that contain conflicting IP addresses.
# 
# This policy setting is designed for computers that register address (A) resource records in DNS zones that do not use Secure Dynamic Updates. Secure Dynamic Update preserves ownership of resource records and does not allow a DNS client to overwrite records that are registered by other computers.
# 
# During dynamic update of resource records in a zone that does not use Secure Dynamic Updates, an A resource record might exist that associates the client's host name with an IP address different than the one currently in use by the client. By default, the DNS client attempts to replace the existing A resource record with an A resource record that has the client's current IP address.
# 
# If you enable this policy setting or if you do not configure this policy setting, DNS clients maintain their default behavior and will attempt to replace conflicting A resource records during dynamic update.
# 
# If you disable this policy setting, existing A resource records that contain conflicting IP addresses will not be replaced during a dynamic update, and an error will be recorded in Event Viewer.
Replace addresses in conflicts:
  lgpo.set:
  - name: DNS_RegistrationOverwritesInConflict
  - setting: Enabled
  - policy_class: Machine
