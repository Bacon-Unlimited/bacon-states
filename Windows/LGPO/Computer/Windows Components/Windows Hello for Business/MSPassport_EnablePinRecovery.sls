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
# LOCATION: \Computer\Windows Components\Windows Hello for Business\MSPassport_EnablePinRecovery.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# PIN recovery enables a user to change a forgotten PIN using the Windows Hello for Business PIN recovery service, without losing any associated credentials or certificates, including any keys associated with the user's personal accounts on the device. To achieve this, the Azure-based PIN recovery service encrypts a recovery secret, which is stored on the device, and requires both the PIN recovery service and the device to decrypt. PIN recovery requires the user to perform multi-factor authentication to Azure Active Directory.
# 
# If you enable this policy setting, Windows Hello for Business uses the PIN recovery service. 
# 
# If you disable or do not configure this policy setting, Windows does not create or store the PIN recovery secret. If the user forgets their PIN, they must delete their existing PIN and create a new one, and they will have to to re-register with any services to which the old PIN provided access.
# 
# NOTE: This policy is only applicable to devices which are registered with Azure Active Directory.
#         
Use PIN Recovery:
  lgpo.set:
  - name: MSPassport_EnablePinRecovery
  - setting: Enabled
  - policy_class: Machine
