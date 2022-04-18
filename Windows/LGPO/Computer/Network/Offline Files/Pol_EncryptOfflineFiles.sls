# windows:SUPPORTED_WindowsXP_SP2_W2K_SP5_NETSERVER_SP1
#
# This policy setting determines whether offline files are encrypted.
# 
# Offline files are locally cached copies of files from a network share. Encrypting this cache reduces the likelihood that a user could access files from the Offline Files cache without proper permissions.
# 
# If you enable this policy setting, all files in the Offline Files cache are encrypted.  This includes existing files as well as files added later. The cached copy on the local computer is affected, but the associated network copy is not. The user cannot unencrypt Offline Files through the user interface.
# 
# If you disable this policy setting, all files in the Offline Files cache are unencrypted. This includes existing files as well as files added later, even if the files were stored using NTFS encryption or BitLocker Drive Encryption while on the server. The cached copy on the local computer is affected, but the associated network copy is not. The user cannot encrypt Offline Files through the user interface.
# 
# If you do not configure this policy setting, encryption of the Offline Files cache is controlled by the user through the user interface. The current cache state is retained, and if the cache is only partially encrypted, the operation completes so that it is fully encrypted. The cache does not return to the unencrypted state. The user must be an administrator on the local computer to encrypt or decrypt the Offline Files cache.
# 
# Note: By default, this cache is protected on NTFS partitions by ACLs.
# 
# This setting is applied at user logon. If this setting is changed after user logon then user logoff and logon is required for this setting to take effect.
Encrypt the Offline Files cache:
  lgpo.set:
  - name: Pol_EncryptOfflineFiles
  - setting: Enabled
  - policy_class: Machine
