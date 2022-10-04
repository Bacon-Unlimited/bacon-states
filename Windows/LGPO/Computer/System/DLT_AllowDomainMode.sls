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
# LOCATION: \Computer\System\DLT_AllowDomainMode.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Specifies that Distributed Link Tracking clients in this domain may use the Distributed Link Tracking (DLT) server, which runs on domain controllers.  The DLT client enables programs to track linked  files that are moved within an NTFS volume, to another NTFS volume on the same computer, or to an NTFS volume on  another computer.   The DLT client can more reliably track links when allowed to use the DLT server.  This policy should not be set unless the DLT server is running on all domain controllers in the domain.
Allow Distributed Link Tracking clients to use domain resources:
  lgpo.set:
  - name: DLT_AllowDomainMode
  - setting: Enabled
  - policy_class: Machine
