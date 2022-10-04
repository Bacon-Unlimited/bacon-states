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
# LOCATION: \Computer\Windows Components\ActiveX Installer Service\ApprovedActiveXInstallSites.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved Activex Install sites specified by host URL. 
# 
# If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL. 
#       
# If you disable or do not configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation. 
# 
# Note: Wild card characters cannot be used when specifying the host URLs.
# 
Approved Installation Sites for ActiveX Controls:
  lgpo.set:
  - name: ApprovedActiveXInstallSites
  - setting:
      ApprovedActiveXInstallSiteslist:
      - placeholder1
      - placeholder2
  - policy_class: Machine
