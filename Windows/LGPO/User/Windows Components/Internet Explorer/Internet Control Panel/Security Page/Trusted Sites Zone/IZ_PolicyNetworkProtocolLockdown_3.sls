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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\IZ_PolicyNetworkProtocolLockdown_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether a resource hosted on an admin-restricted protocol in the Intranet Zone can run active content such as script, ActiveX, Java and Binary Behaviors. The list of restricted protocols may be set in the Intranet Zone Restricted Protocols section under Network Protocol Lockdown policy.
# 
# If you enable this policy setting, no Intranet Zone content accessed is affected, even for protocols on the restricted list. If you select Prompt from the drop-down box, the Notification bar will appear to allow control over questionable content accessed over any restricted protocols; content over other protocols is unaffected.
# 
# If you disable this policy setting, all attempts to access such content over the restricted protocols is blocked.
# 
# If you do not configure this policy setting, the Notification bar will appear to allow control over questionable content accessed over any restricted protocols when the Network Protocol Lockdown security feature is enabled.
Allow active content over restricted protocols to access my computer:
  lgpo.set:
  - name: IZ_PolicyNetworkProtocolLockdown_3
  - setting:
      IZ_Partname2300: enum-placeholder
  - policy_class: User
