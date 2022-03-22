# WU_SUPPORTED_Win2kSP3_Or_XPSP1_Through_Win81_or_Server2012R2
#
# Specifies whether Automatic Updates should automatically install certain updates that neither interrupt Windows services nor restart Windows.
# 
# If the status is set to Enabled, Automatic Updates will immediately install these updates once they are downloaded and ready to install.
# 
# If the status is set to Disabled, such updates will not be installed immediately.
# 
# Note: If the "Configure Automatic Updates" policy is disabled, this policy has no effect.
Allow Automatic Updates immediate installation:
  lgpo.set:
  - name: ImmediateInstall_Title
  - setting: Enabled
  - policy_class: Machine
