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
# LOCATION: \Computer\System\Scripts\Run_User_PS_Scripts_First.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting determines whether Windows PowerShell scripts are run before non-Windows PowerShell scripts during user logon and logoff. By default, Windows PowerShell scripts run after non-Windows PowerShell scripts. 
#  
# If you enable this policy setting, within each applicable Group Policy Object (GPO), PowerShell scripts are run before non-PowerShell scripts during user logon and logoff. 
# 
# For example, assume the following scenario: 
# 
# There are three GPOs (GPO A, GPO B, and GPO C). This policy setting is enabled in GPO A. 
# 
# GPO B and GPO C include the following user logon scripts:
# 
# GPO B: B.cmd, B.ps1
# GPO C: C.cmd, C.ps1
# 
# Assume also that there are two users, Qin Hong and Tamara Johnston. 
# For Qin, GPOs A, B, and C are applied. Therefore, the scripts for GPOs B and C run in the following order for Qin:
# 
# Within GPO B: B.ps1, B.cmd
# Within GPO C: C.ps1, C.cmd
#  
# For Tamara, GPOs B and C are applied, but not GPO A. Therefore, the scripts for GPOs B and C run in the following order for Tamara:
# 
# Within GPO B: B.cmd, B.ps1
# Within GPO C: C.cmd, C.ps1
# 
# Note: This policy setting determines the order in which user logon and logoff scripts are run within all applicable GPOs. You can override this policy setting for specific script types within a specific GPO by configuring the following policy settings for the GPO:
#  
# User Configuration\Policies\Windows Settings\Scripts (Logon/Logoff)\Logon
# User Configuration\Policies\Windows Settings\Scripts (Logon/Logoff)\Logoff
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the setting set in User Configuration.
# 
Run Windows PowerShell scripts first at user logon, logoff:
  lgpo.set:
  - name: Run_User_PS_Scripts_First
  - setting: Enabled
  - policy_class: Machine
