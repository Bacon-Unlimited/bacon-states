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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\IZ_PolicyLocalMachineZoneLockdownTemplate.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.
# 
# If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.
# 
# If you disable this template policy setting, no security level is configured.
# 
# If you do not configure this template policy setting, no security level is configured.
# 
# Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.
# 
# Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
Locked-Down Local Machine Zone Template:
  lgpo.set:
  - name: IZ_PolicyLocalMachineZoneLockdownTemplate
  - setting:
      IZ_PartnameLocalMachineZoneLockdownTemplate: enum-placeholder
  - policy_class: User
