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
# LOCATION: \Computer\System\Trusted Platform Module Services\StandardUserAuthorizationFailureDuration_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to manage the duration in minutes for counting standard user authorization failures for Trusted Platform Module (TPM) commands requiring authorization. If the number of TPM commands with an authorization failure within the duration equals a threshold, a standard user is prevented from sending commands requiring authorization to the TPM.
# 
# This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.
# 
# An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than this duration are ignored.
# 
# For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.
# 
# The Standard User Lockout Threshold Individual value is the maximum number of authorization failures each standard user may have before the user is not allowed to send commands requiring authorization to the TPM.
# 
# The Standard User Lockout Total Threshold value is the maximum total number of authorization failures all standard users may have before all standard users are not allowed to send commands requiring authorization to the TPM.
# 
# The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode it is global for all users including administrators and Windows features like BitLocker Drive Encryption. The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.
# 
# An administrator with the TPM owner password may fully reset the TPM's hardware lockout logic using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic all prior standard user TPM authorization failures are ignored; allowing standard users to use the TPM normally again immediately.
# 
# If this value is not configured, a default value of 480 minutes (8 hours) is used.
#       
Standard User Lockout Duration:
  lgpo.set:
  - name: StandardUserAuthorizationFailureDuration_Name
  - setting:
      DXT_StandardUserAuthorizationFailureDuration_Name: decimal-placeholder
  - policy_class: Machine
