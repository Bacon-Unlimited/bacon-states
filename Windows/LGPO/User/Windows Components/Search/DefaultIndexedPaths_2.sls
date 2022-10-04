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
# LOCATION: \User\Windows Components\Search\DefaultIndexedPaths_2.sls
#
# SUPPORTED WINDOWS OS
# 4OrLater
#
# Enabling this policy allows you to specify a list of paths to index by default. The user may override these paths and exclude them from indexing. On a per-user basis, this policy setting will work only if a protocol handler referencing a SID-based user scope, such as MAPI, is specified. File system paths that do not reference a specific SID will not be included for indexing if these are only specified in the Group Policy under "User Configuration." To include a file system path for indexing, please specify the file system path to be indexed under the "Computer Configuration" Group Policy.
Default indexed paths:
  lgpo.set:
  - name: DefaultIndexedPaths_2
  - setting:
      DefaultIndexedPaths:
      - placeholder1
      - placeholder2
  - policy_class: User
