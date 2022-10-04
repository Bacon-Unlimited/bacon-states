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
# LOCATION: \Computer\Windows Components\Windows Update\FeaturedSoftwareNotification_Title.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to control whether users see detailed enhanced notification messages about featured software from the Microsoft Update service. Enhanced notification messages convey the value and promote the installation and use of optional software. This policy setting is intended for use in loosely managed environments in which you allow the end user access to the Microsoft Update service.
# 
# If you enable this policy setting, a notification message will appear on the user's computer when featured software is available. The user can click the notification to open the Windows Update Application and get more information about the software or install it. The user can also click "Close this message" or "Show me later" to defer the notification as appropriate.
# 
# In Windows 7, this policy setting will only control detailed notifications for optional applications. In Windows Vista, this policy setting controls detailed notifications for optional applications and updates.
# 
# If you disable or do not configure this policy setting, Windows 7 users will not be offered detailed notification messages for optional applications, and Windows Vista users will not be offered detailed notification messages for optional applications or updates.
# 
# By default, this policy setting is disabled.
# 
# If you are not using the Microsoft Update service, then the Software Notifications policy setting has no effect.
# 
# If the "Configure Automatic Updates" policy setting is disabled or is not configured, then the Software Notifications policy setting has no effect.
#       
Turn on Software Notifications:
  lgpo.set:
  - name: FeaturedSoftwareNotification_Title
  - setting: Enabled
  - policy_class: Machine
