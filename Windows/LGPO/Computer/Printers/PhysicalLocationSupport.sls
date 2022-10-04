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
# LOCATION: \Computer\Printers\PhysicalLocationSupport.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Enables the physical Location Tracking setting for Windows printers.
# 
# Use Location Tracking to design a location scheme for your enterprise and assign computers and printers to locations in the scheme. Location Tracking overrides the standard method used to locate and associate computers and printers. The standard method uses a printer's IP address and subnet mask to estimate its physical location and proximity to computers.
# 
# If you enable this setting, users can browse for printers by location without knowing the printer's location or location naming scheme. Enabling Location Tracking adds a Browse button in the Add Printer wizard's Printer Name and Sharing Location screen and to the General tab in the Printer Properties dialog box. If you enable the Group Policy Computer location setting, the default location you entered appears in the Location field by default.
# 
# If you disable this setting or do not configure it, Location Tracking is disabled. Printer proximity is estimated using the standard method (that is, based on IP address and subnet mask).
Pre-populate printer search location text:
  lgpo.set:
  - name: PhysicalLocationSupport
  - setting: Enabled
  - policy_class: Machine
