# SUPPORTED_WMP8
#
# This policy setting allows you to set and lock Windows Media Player in skin mode, using a specified skin.
# 
# If you enable this policy setting, the Player displays only in skin mode using the skin specified in the Skin box on the Setting tab.
# 
# You must use the complete file name for the skin (for example, skin_name.wmz), and the skin must be installed in the %programfiles%\Windows Media Player\Skins Folder on a user's computer. If the skin is not installed on a user's computer, or if the Skin box is blank, the Player opens by using the Corporate skin. The only way to specify the Corporate skin is to leave the Skin box blank.
# 
# A user has access only to the Player features that are available with the specified skin. Users cannot switch the Player to full mode and cannot choose a different skin.
# 
# If you disable or do not configure this policy setting, users can display the Player in full or skin mode and have access to all available features of the Player.
Set and Lock Skin:
  lgpo.set:
  - name: SkinLockDown
  - setting:
      LockSkin: text-placeholder
  - policy_class: User
