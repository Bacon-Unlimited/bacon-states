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
# LOCATION: \Computer\System\App-V\Integration\Integration_Root_Global.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Specifies the location where symbolic links are created to the current version of a globally published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %allusersprofile%\Microsoft\AppV\Client\Integration.
Integration Root Global:
  lgpo.set:
  - name: Integration_Root_Global
  - setting:
      Integration_Root_Global_Prompt: text-placeholder
  - policy_class: Machine
