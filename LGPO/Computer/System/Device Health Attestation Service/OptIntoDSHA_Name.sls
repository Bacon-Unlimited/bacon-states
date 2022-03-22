# windows:SUPPORTED_Windows_10_0_RS3
#
# This group policy enables Device Health Attestation reporting (DHA-report) on supported devices. It enables supported devices to send Device Health Attestation related information (device boot logs, PCR values, TPM certificate, etc.) to Device Health Attestation Service (DHA-Service) every time a device starts. Device Health Attestation Service validates the security state and health of the devices, and makes the findings accessible to enterprise administrators via a cloud based reporting portal. This policy is independent of DHA reports that are initiated by device manageability solutions (like MDM or SCCM), and will not interfere with their workflows.
Enable Device Health Attestation Monitoring and Reporting:
  lgpo.set:
  - name: OptIntoDSHA_Name
  - setting: Enabled
  - policy_class: Machine
