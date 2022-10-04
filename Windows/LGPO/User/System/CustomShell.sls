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
# LOCATION: \User\System\CustomShell.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Specifies an alternate user interface.
# 
# The Explorer program (%windir%\explorer.exe) creates the familiar Windows interface, but you can use this setting to specify an alternate interface. If you enable this setting, the system starts the interface you specify instead of Explorer.exe.
# 
# To use this setting, copy your interface program to a network share or to your system drive. Then, enable this setting, and type the name of the interface program, including the file name extension, in the Shell name text box. If the interface program file is not located in a folder specified in the Path environment variable for your system, enter the fully qualified path to the file.
# 
# If you disable this setting or do not configure it, the setting is ignored and the system displays the Explorer interface.
# 
# Tip: To find the folders indicated by the Path environment variable, click System Properties in Control Panel, click the Advanced tab, click the Environment Variables button, and then, in the System variables box, click Path.
Custom User Interface:
  lgpo.set:
  - name: CustomShell
  - setting:
      CustomShellInst: text-placeholder
  - policy_class: User
