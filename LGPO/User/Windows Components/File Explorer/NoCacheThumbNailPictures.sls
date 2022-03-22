# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to turn off caching of thumbnail pictures.
# 
# If you enable this policy setting, thumbnail views are not cached.
# 
# If you disable or do not configure this policy setting, thumbnail views are cached.
# 
# Note: For shared corporate workstations or computers where security is a top concern, you should enable this policy setting to turn off the thumbnail view cache, because the thumbnail cache can be read by everyone.
Turn off caching of thumbnail pictures:
  lgpo.set:
  - name: NoCacheThumbNailPictures
  - setting: Enabled
  - policy_class: User
