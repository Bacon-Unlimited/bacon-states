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
