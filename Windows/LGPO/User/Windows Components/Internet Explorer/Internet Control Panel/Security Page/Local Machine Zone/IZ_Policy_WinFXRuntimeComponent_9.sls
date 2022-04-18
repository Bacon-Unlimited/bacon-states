# SUPPORTED_IE7
#
# This policy setting prevents the user's computer from starting Microsoft .NET Framework Setup when the user is browsing to .NET Framework content in Internet Explorer. The .NET Framework is the next-generation platform for Windows. It uses the common language runtime and incorporates support from multiple developer tools. It includes the new managed code APIs for Windows.
# 
# If you enable this policy setting, .NET Framework Setup is turned off. The user cannot change this behavior.
# 
# If you disable this policy setting, .NET Framework Setup is turned on. The user cannot change this behavior.
# 
# If you do not configure this policy setting, .NET Framework Setup is turned on by default. The user can change this behavior.
Turn off .NET Framework Setup:
  lgpo.set:
  - name: IZ_Policy_WinFXRuntimeComponent_9
  - setting:
      IZ_Partname2600: enum-placeholder
  - policy_class: User
