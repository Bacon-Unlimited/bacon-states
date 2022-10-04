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
# LOCATION: \Computer\Printers\KMPrintersAreBlocked.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines whether printers using kernel-mode drivers may be installed on the local computer.  Kernel-mode drivers have access to system-wide memory, and therefore poorly-written kernel-mode drivers can cause stop errors.
# 
# If you disable this setting, or do not configure it, then printers using a kernel-mode drivers may be installed on the local computer running Windows XP Home Edition and Windows XP Professional.
# 
# If you do not configure this setting on Windows Server 2003 family products, the installation of kernel-mode printer drivers will be blocked.
# 
# If you enable this setting, installation of a printer using a kernel-mode driver will not be allowed.
# 
# Note: By applying this policy, existing kernel-mode drivers will be disabled upon installation of service packs or reinstallation of the Windows XP operating system. This policy does not apply to 64-bit kernel-mode printer drivers as they cannot be installed and associated with a print queue.
Disallow installation of printers using kernel-mode drivers:
  lgpo.set:
  - name: KMPrintersAreBlocked
  - setting: Enabled
  - policy_class: Machine
