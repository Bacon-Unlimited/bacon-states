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
# LOCATION: \Computer\System\Trusted Platform Module Services\OSManagedAuth_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting configures how much of the TPM owner authorization information is stored in the registry of the local computer. Depending on the amount of TPM owner authorization information stored locally, the operating system and TPM-based applications can perform certain TPM actions which require TPM owner authorization without requiring the user to enter the TPM owner password.
# 
# You can choose to have the operating system store either the full TPM owner authorization value, the TPM administrative delegation blob plus the TPM user delegation blob, or none.
# 
# If you enable this policy setting, Windows will store the TPM owner authorization in the registry of the local computer according to the operating system managed TPM authentication setting you choose.
# 
# Choose the operating system managed TPM authentication setting of "Full" to store the full TPM owner authorization, the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting allows use of the TPM without requiring remote or external storage of the TPM owner authorization value. This setting is appropriate for scenarios which do not depend on preventing reset of the TPM anti-hammering logic or changing the TPM owner authorization value. Some TPM-based applications may require this setting be changed before features which depend on the TPM anti-hammering logic can be used.
# 
# Choose the operating system managed TPM authentication setting of "Delegated" to store only the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting is appropriate for use with TPM-based applications that depend on the TPM anti-hammering logic.
# 
# Choose the operating system managed TPM authentication setting of "None" for compatibility with previous operating systems and applications or for use with scenarios that require TPM owner authorization not be stored locally. Using this setting might cause issues with some TPM-based applications.
# 
# Note: If the operating system managed TPM authentication setting is changed from "Full" to "Delegated", the full TPM owner authorization value will be regenerated and any copies of the original TPM owner authorization value will be invalid.
# 
Configure the level of TPM owner authorization information available to the operating system:
  lgpo.set:
  - name: OSManagedAuth_Name
  - setting:
      SelectOSManagedAuthLevel: enum-placeholder
  - policy_class: Machine
