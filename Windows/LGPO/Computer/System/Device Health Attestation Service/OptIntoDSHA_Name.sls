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
# LOCATION: \Computer\System\Device Health Attestation Service\OptIntoDSHA_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS3
#
# This group policy enables Device Health Attestation reporting (DHA-report) on supported devices. It enables supported devices to send Device Health Attestation related information (device boot logs, PCR values, TPM certificate, etc.) to Device Health Attestation Service (DHA-Service) every time a device starts. Device Health Attestation Service validates the security state and health of the devices, and makes the findings accessible to enterprise administrators via a cloud based reporting portal. This policy is independent of DHA reports that are initiated by device manageability solutions (like MDM or SCCM), and will not interfere with their workflows.
Enable Device Health Attestation Monitoring and Reporting:
  lgpo.set:
  - name: OptIntoDSHA_Name
  - setting: Enabled
  - policy_class: Machine
