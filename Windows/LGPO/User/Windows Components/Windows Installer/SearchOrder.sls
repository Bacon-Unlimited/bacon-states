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
# LOCATION: \User\Windows Components\Windows Installer\SearchOrder.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting specifies the order in which Windows Installer searches for installation files.
# 
# If you disable or do not configure this policy setting, by default, the Windows Installer searches the network first, then removable media (floppy drive, CD-ROM, or DVD), and finally, the Internet (URL).
# 
# If you enable this policy setting, you can change the search order by specifying the letters representing each file source in the order that you want Windows Installer to search:
# 
# --   "n" represents the network;
# 
# --   "m" represents media;
# 
# --   "u" represents URL, or the Internet.
# 
# To exclude a file source, omit or delete the letter representing that source type.
Specify the order in which Windows Installer searches for installation files:
  lgpo.set:
  - name: SearchOrder
  - setting:
      SearchOrder: text-placeholder
  - policy_class: User
