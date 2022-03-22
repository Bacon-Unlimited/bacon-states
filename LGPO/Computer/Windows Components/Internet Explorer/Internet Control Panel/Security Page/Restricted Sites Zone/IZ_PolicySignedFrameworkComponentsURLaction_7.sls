# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether .NET Framework components that are signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.
# 
# If you enable this policy setting, Internet Explorer will execute signed managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute signed managed components.
# 
# If you disable this policy setting, Internet Explorer will not execute signed managed components.
# 
# If you do not configure this policy setting, Internet Explorer will not execute signed managed components.
Run .NET Framework-reliant components signed with Authenticode:
  lgpo.set:
  - name: IZ_PolicySignedFrameworkComponentsURLaction_7
  - setting:
      IZ_Partname2001: enum-placeholder
  - policy_class: Machine
