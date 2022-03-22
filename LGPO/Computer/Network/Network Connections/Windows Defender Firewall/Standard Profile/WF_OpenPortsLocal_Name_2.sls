# windows:SUPPORTED_WindowsXPSP2
#
# Allows administrators to use the Windows Defender Firewall component in Control Panel to define a local port exceptions list. Windows Defender Firewall uses two port exceptions lists; the other is defined by the "Windows Defender Firewall: Define inbound port exceptions" policy setting.
# 
# If you enable this policy setting, the Windows Defender Firewall component in Control Panel allows administrators to define a local port exceptions list.
# 
# If you disable this policy setting, the Windows Defender Firewall component in Control Panel does not allow administrators to define a local port exceptions list.  However, local administrators will still be allowed to create firewall rules in the Windows Defender Firewall with Advanced Security snap-in.  If you wish to prevent all locally created rules from applying, use the Group Policy Object Editor snap-in and configure Computer Configuration\Windows Settings\Security Settings\Windows Defender Firewall with Advanced Security to specify that local firewall rules should not apply.
'Windows Defender Firewall: Allow local port exceptions':
  lgpo.set:
  - name: WF_OpenPortsLocal_Name_2
  - setting: Enabled
  - policy_class: Machine
