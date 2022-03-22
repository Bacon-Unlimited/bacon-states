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
  - name: ApprovedUsbPrintDevicesUser
  - setting:
      ApprovedUsbPrintDevices_List: text-placeholder
  - policy_class: User
