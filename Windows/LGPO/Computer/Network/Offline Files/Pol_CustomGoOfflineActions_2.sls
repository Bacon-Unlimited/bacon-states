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
# LOCATION: \Computer\Network\Offline Files\Pol_CustomGoOfflineActions_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines how computers respond when they are disconnected from particular offline file servers. This setting overrides the default response, a user-specified response, and the response specified in the "Action on server disconnect" setting.
# 
# To use this setting, click Show. In the Show Contents dialog box in the Value Name column box, type the server's computer name. Then, in the Value column box, type "0" if users can work offline when they are disconnected from this server, or type "1" if they cannot.
# 
# This setting appears in the Computer Configuration and User Configuration folders.  If both settings are configured for a particular server, the setting in Computer Configuration takes precedence over the setting in User Configuration.  Both Computer and User configuration take precedence over a user's setting.  This setting does not prevent users from setting custom actions through the Offline Files tab.  However, users are unable to change any custom actions established via this setting.
# 
# Tip: To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click Advanced. This setting corresponds to the settings in the "Exception list" section.
Non-default server disconnect actions:
  lgpo.set:
  - name: Pol_CustomGoOfflineActions_2
  - setting:
      Lbl_CustomGoOfflineActionsList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
