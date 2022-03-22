# windows:SUPPORTED_Windows7
#
# This policy setting configures whether or not fixed data drives formatted with the FAT file system can be unlocked and viewed on computers running Windows Server 2008, Windows Vista, Windows XP with Service Pack 3 (SP3), or Windows XP with Service Pack 2 (SP2) operating systems.
# 
# If this policy setting is enabled or not configured, fixed data drives formatted with the FAT file system can be unlocked on computers running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2, and their content can be viewed. These operating systems have read-only access to BitLocker-protected drives.
# 
# When this policy setting is enabled, select the "Do not install BitLocker To Go Reader on FAT formatted fixed drives" check box to help prevent users from running BitLocker To Go Reader from their fixed drives. If BitLocker To Go Reader (bitlockertogo.exe) is present on a drive that does not have an identification field specified, or if the drive has the same identification field as specified in the "Provide unique identifiers for your organization" policy setting, the user will be prompted to update BitLocker and BitLocker To Go Reader will be deleted from the drive. In this situation, for the fixed drive to be unlocked on computers running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2, BitLocker To Go Reader must be installed on the computer. If this check box is not selected, BitLocker To Go Reader will be installed on the fixed drive to enable users to unlock the drive on computers running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2 that do not have BitLocker To Go Reader installed.
# 
# If this policy setting is disabled, fixed data drives formatted with the FAT file system that are BitLocker-protected cannot be unlocked on computers running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2. Bitlockertogo.exe will not be installed.
# 
# Note: This policy setting does not apply to drives that are formatted with the NTFS file system.
# 
#       
Allow access to BitLocker-protected fixed data drives from earlier versions of Windows:
  lgpo.set:
  - name: FDVHybrid_Name
  - setting:
      FDVNoBitLockerToGoReader_Name: boolean-placeholder
  - policy_class: Machine
