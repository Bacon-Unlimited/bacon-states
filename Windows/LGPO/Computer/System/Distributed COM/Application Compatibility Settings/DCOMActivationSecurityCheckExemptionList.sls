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
# LOCATION: \Computer\System\Distributed COM\Application Compatibility Settings\DCOMActivationSecurityCheckExemptionList.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Allows you to view and change a list of DCOM server application ids (appids) which are exempted from the DCOM Activation security check.  DCOM uses two such lists, one configured via Group Policy through this policy setting, and the other via the actions of local computer administrators.  DCOM ignores the second list when this policy setting is configured, unless the "Allow local activation security check exemptions" policy is enabled.
# 
# DCOM server appids added to this policy must be listed in curly-brace format.  For example: {b5dcb061-cefb-42e0-a1be-e6a6438133fe}.  If you enter a non-existent or improperly formatted appid DCOM will add it to the list without checking for errors.
# 
# If you enable this policy setting, you can view and change the list of DCOM activation security check exemptions defined by Group Policy settings. If you add an appid to this list and set its value to 1, DCOM will not enforce the Activation security check for that DCOM server.   If you add an appid to this list and set its value to 0 DCOM will always enforce the Activation security check for that DCOM server regardless of local settings.
# 
# If you disable this policy setting, the appid exemption list defined by Group Policy is deleted, and the one defined by local computer administrators is used.
# 
# If you do not configure this policy setting, the appid exemption list defined by local computer administrators is used.
# 
# Notes:
# 
# The DCOM Activation security check is done after a DCOM server process is started, but before an object activation request is dispatched to the server process.   This access check is done against the DCOM server's custom launch permission security descriptor if it exists, or otherwise against the configured defaults.
# 
# If the DCOM server's custom launch permission contains explicit DENY entries this may mean that object activations that would have previously succeeded for such specified users, once the DCOM server process was up and running, might now fail instead.   The proper action in this situation is to re-configure the DCOM server's custom launch permission settings for correct security settings, but this policy setting may be used in the short-term as an application compatibility deployment aid.
# 
# DCOM servers added to this exemption list are only exempted if their custom launch permissions do not contain specific LocalLaunch, RemoteLaunch, LocalActivate, or RemoteActivate grant or deny entries for any users or groups.  Also note, exemptions for DCOM Server Appids added to this list will apply to both 32-bit and 64-bit versions of the server if present.
Define Activation Security Check exemptions:
  lgpo.set:
  - name: DCOMActivationSecurityCheckExemptionList
  - setting:
      DCOM_Lbl_ActSecCheckExemptionList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
