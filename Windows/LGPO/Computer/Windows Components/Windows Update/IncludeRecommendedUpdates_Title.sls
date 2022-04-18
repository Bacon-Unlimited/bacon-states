# WU_SUPPORTED_WindowsVista_Through_Win81_or_Server2012R2
#
# Specifies whether Automatic Updates will deliver both important as well as recommended updates from the Windows Update update service.
# 
# When this policy is enabled, Automatic Updates will install recommended updates as well as important updates from Windows Update update service.
# 
# When disabled or not configured Automatic Updates will continue to deliver important updates if it is already configured to do so.
Turn on recommended updates via Automatic Updates:
  lgpo.set:
  - name: IncludeRecommendedUpdates_Title
  - setting: Enabled
  - policy_class: Machine
