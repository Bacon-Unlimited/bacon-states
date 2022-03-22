# windows:SUPPORTED_Windows_10_0_RS7
#
# This policy setting lets you turn off cloud optimized content in all Windows experiences.
# 
# If you enable this policy, Windows experiences that use the cloud optimized content client component, will instead present the default fallback content.
# 
# If you disable or do not configure this policy, Windows experiences will be able to use cloud optimized content.
#       
Turn off cloud optimized content:
  lgpo.set:
  - name: DisableCloudOptimizedContent
  - setting: Enabled
  - policy_class: Machine
