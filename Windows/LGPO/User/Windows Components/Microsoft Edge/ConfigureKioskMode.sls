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
# LOCATION: \User\Windows Components\Microsoft Edge\ConfigureKioskMode.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_RS5
#
# Configure how Microsoft Edge behaves when its running in kiosk mode with assigned access, either as a single app or as one of multiple apps running on the kiosk device. You can control whether Microsoft Edge runs InPrivate full screen, InPrivate multi-tab with limited functionality, or normal Microsoft Edge.
# 
# You need to configure Microsoft Edge in assigned access for this policy to take effect; otherwise, these settings are ignored. To learn more about assigned access and kiosk configuration, see Configure kiosk and shared devices running Windows desktop editions (https://aka.ms/E489vw).
# 
# If enabled and set to 0 (Default or not configured):
# - If its a single app, it runs InPrivate full screen for digital signage or interactive displays.
# - If its one of many apps, Microsoft Edge runs as normal.
# If enabled and set to 1:
# - If its a single app, it runs a limited multi-tab version of InPrivate and is the only app available for public browsing. Users cant minimize, close, or open windows or customize Microsoft Edge, but can clear browsing data and downloads and restart by clicking End session. You can configure Microsoft Edge to restart after a period of inactivity by using the Configure kiosk reset after idle timeout policy.
# - If its one of many apps, it runs in a limited multi-tab version of InPrivate for public browsing with other apps. Users can minimize, close, and open multiple InPrivate windows, but they cant customize Microsoft Edge.
Configure kiosk mode:
  lgpo.set:
  - name: ConfigureKioskMode
  - setting:
      ConfigureKioskMode_TextBox: decimal-placeholder
  - policy_class: User
