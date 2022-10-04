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
# LOCATION: \Computer\Windows Components\Windows Media Digital Rights Management\DisableOnline.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# Prevents Windows Media Digital Rights Management (DRM) from accessing the Internet (or intranet).
# 
# When enabled, Windows Media DRM is prevented from accessing the Internet (or intranet) for license acquisition and security upgrades.
# 
# When this policy is enabled, programs are not able to acquire licenses for secure content, upgrade Windows Media DRM security components, or restore backed up content licenses.  Secure content that is already licensed to the local computer will continue to play. Users are also able to protect music that they copy from a CD and play this protected content on their computer, since the license is generated locally in this scenario.
# 
# When this policy is either disabled or not configured, Windows Media DRM functions normally and will connect to the Internet (or intranet) to acquire licenses, download security upgrades, and perform license restoration.
Prevent Windows Media DRM Internet Access:
  lgpo.set:
  - name: DisableOnline
  - setting: Enabled
  - policy_class: Machine
