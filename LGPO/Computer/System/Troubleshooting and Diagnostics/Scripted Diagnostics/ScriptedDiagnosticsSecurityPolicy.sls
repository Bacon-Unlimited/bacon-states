# windows:SUPPORTED_Windows7
#
# This policy setting determines whether scripted diagnostics will execute diagnostic packages that are signed by untrusted publishers.
# 
# If you enable this policy setting, the scripted diagnostics execution engine validates the signer of any diagnostic package and runs only those signed by trusted publishers.
# 
# If you disable or do not configure this policy setting, the scripted diagnostics execution engine runs all digitally signed packages.
Configure Security Policy for Scripted Diagnostics:
  lgpo.set:
  - name: ScriptedDiagnosticsSecurityPolicy
  - setting: Enabled
  - policy_class: Machine
