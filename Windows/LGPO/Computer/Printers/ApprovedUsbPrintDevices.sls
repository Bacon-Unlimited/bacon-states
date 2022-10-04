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
# LOCATION: \Computer\Printers\ApprovedUsbPrintDevices.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
# 
#             This setting is a component of the Device Control Printing Restrictions. To use this setting, enable Device Control Printing by enabling the "Enable Device Control Printing Restrictions" setting.
# 
#             When Device Control Printing is enabled, the system uses the specified list of vid/pid values to determine if the current USB connected printer is approved for local printing.
# 
#             Type all the approved vid/pid combinations (separated by commas) that correspond to approved USB printer models. When a user tries to print to a USB printer queue the device vid/pid will be compared to the approved list.
#         
List of Approved USB-connected print devices:
  lgpo.set:
  - name: ApprovedUsbPrintDevices
  - setting:
      ApprovedUsbPrintDevices_List: text-placeholder
  - policy_class: Machine
