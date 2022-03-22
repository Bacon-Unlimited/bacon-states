# windows:SUPPORTED_Windows7
#
# Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.
Virtual Component Process Allow List:
  lgpo.set:
  - name: Virtualization_JITVAllowList
  - setting:
      Virtualization_JITVAllowList_Prompt: multiText-placeholder
  - policy_class: Machine
