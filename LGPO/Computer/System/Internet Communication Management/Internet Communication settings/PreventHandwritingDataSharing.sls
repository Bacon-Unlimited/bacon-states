# windows:SUPPORTED_Windows7
#
# Turns off data sharing from the handwriting recognition personalization tool.
# 
# The handwriting recognition personalization tool tool enables Tablet PC users to adapt handwriting recognition to their own writing style by providing writing samples. The tool can optionally share user writing samples with Microsoft to improve handwriting recognition in future versions of Windows. The tool generates reports and transmits them to Microsoft over a secure connection.
# 
# If you enable this policy, Tablet PC users cannot choose to share writing samples from the handwriting recognition personalization tool with Microsoft.
# 
# If you disable this policy, Tablet PC user writing samples from the handwriting recognition personalization tool will automatically be shared with Microsoft.
# 
# If you do not configure this policy, Tablet PC users can choose whether or not they want to share their writing samples from the handwriting recognition personalization tool with Microsoft.
Turn off handwriting personalization data sharing:
  lgpo.set:
  - name: PreventHandwritingDataSharing
  - setting: Enabled
  - policy_class: Machine
