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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Trusted Sites Zone\IZ_PolicyAllowTDCControl_Both_TrustedLockdown.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11WIN10_1607
#
# This policy setting controls whether or not the user is allowed to run the TDC ActiveX control on websites.
# 
# If you enable this policy setting, the TDC ActiveX control will not run from websites in this zone.
# 
# If you disable this policy setting, the TDC Active X control will run from all sites in this zone.
Allow only approved domains to use the TDC ActiveX control:
  lgpo.set:
  - name: IZ_PolicyAllowTDCControl_Both_TrustedLockdown
  - setting:
      IZ_Partname120c: enum-placeholder
  - policy_class: User
