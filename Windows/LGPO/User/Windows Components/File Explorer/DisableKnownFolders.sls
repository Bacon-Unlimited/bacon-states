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
# LOCATION: \User\Windows Components\File Explorer\DisableKnownFolders.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify a list of known folders that should be disabled.  Disabling a known folder will prevent the underlying file or directory from being created via the known folder API.  If the folder exists before the policy is applied, the folder must be manually deleted since the policy only blocks the creation of the folder.
# 
# You can specify a known folder using its known folder id or using its canonical name.  For example, the Sample Videos known folder can be disabled by specifying {440fcffd-a92b-4739-ae1a-d4a54907c53f} or SampleVideos.
# 
# Note: Disabling a known folder can introduce application compatibility issues in applications that depend on the existence of the known folder.
Disable Known Folders:
  lgpo.set:
  - name: DisableKnownFolders
  - setting:
      DisableKnownFolders_Prompt:
      - placeholder1
      - placeholder2
  - policy_class: User
