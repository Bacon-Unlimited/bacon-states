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
# LOCATION: \Computer\Windows Components\Windows Installer\AllowLockdownMedia.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows users to install programs from removable media during privileged installations.
# 
# If you enable this policy setting, all users are permitted to install programs from removable media, such as floppy disks and CD-ROMs, even when the installation program is running with elevated system privileges.
# 
# This policy setting does not affect installations that run in the user's security context. By default, users can install from removable media when the installation runs in their own security context.
# 
# If you disable or do not configure this policy setting, by default, users can install programs from removable media only when the installation runs in the user's security context. During privileged installations, such as those offered on the desktop or displayed in Add or Remove Programs, only system administrators can install from removable media.
# 
# Also, see the "Prevent removable media source for any install" policy setting.
Allow users to use media source while elevated:
  lgpo.set:
  - name: AllowLockdownMedia
  - setting: Enabled
  - policy_class: Machine
