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
# LOCATION: \Computer\Windows Components\Security Center\SecurityCenter_SecurityCenterInDomain.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether Security Center is turned on or off for computers that are joined to an Active Directory domain. When Security Center is turned on, it monitors essential security settings and notifies the user when the computer might be at risk. The Security Center Control Panel category view also contains a status section, where the user can get recommendations to help increase the computer's security. When Security Center is not enabled on the domain, neither the notifications nor the Security Center status section are displayed. 
# 
# Note that Security Center can only be turned off for computers that are joined to a Windows domain. When a computer is not joined to a Windows domain, the policy setting will have no effect.
# 
# If you do not congifure this policy setting, the Security Center is turned off for domain members. 
# 
# If you enable this policy setting, Security Center is turned on for all users. 
# 
# If you disable this policy setting, Security Center is turned off for domain members.
# 
# Windows XP SP2
# ----------------------
# In Windows XP SP2, the essential security settings that are monitored by Security Center include firewall, antivirus, and Automatic Updates.  Note that Security Center might not be available following a change to this policy setting until after the computer is restarted for Windows XP SP2 computers. 
# 
# Windows Vista
# ---------------------
# In Windows Vista, this policy setting monitors essential security settings to include firewall, antivirus, antispyware, Internet security settings, User Account Control, and Automatic Updates. Windows Vista computers do not require a reboot for this policy setting to take effect.
Turn on Security Center (Domain PCs only):
  lgpo.set:
  - name: SecurityCenter_SecurityCenterInDomain
  - setting: Enabled
  - policy_class: Machine
