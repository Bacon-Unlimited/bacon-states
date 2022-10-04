####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\System\Mitigation Options\ProcessMitigationOptions.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#         This security feature provides a means to override individual process MitigationOptions settings. This can be used to enforce a number of security policies specific to applications. The application name is specified as the Value name, including extension. The Value is specified as a bit field with a series of flags in particular positions. Bits can be set to either 0 (setting is forced off), 1 (setting is forced on), or ? (setting retains its existing value prior to GPO evaluation). The recognized bit locations are:
# 
#         PROCESS_CREATION_MITIGATION_POLICY_DEP_ENABLE (0x00000001)
#         Enables data execution prevention (DEP) for the child process
# 
#         PROCESS_CREATION_MITIGATION_POLICY_DEP_ATL_THUNK_ENABLE (0x00000002)
#         Enables DEP-ATL thunk emulation for the child process. DEP-ATL thunk emulation causes the system to intercept NX faults that originate from the Active Template Library (ATL) thunk layer.
# 
#         PROCESS_CREATION_MITIGATION_POLICY_SEHOP_ENABLE (0x00000004)
#         Enables structured exception handler overwrite protection (SEHOP) for the child process. SEHOP blocks exploits that use the structured exception handler (SEH) overwrite technique.
# 
#         PROCESS_CREATION_MITIGATION_POLICY_FORCE_RELOCATE_IMAGES_ALWAYS_ON (0x00000100)
#         The force Address Space Layout Randomization (ASLR) policy forcibly rebases images that are not dynamic base compatible by acting as though an image base collision happened at load time. If relocations are required, images that do not have a base relocation section will not be loaded.
# 
#         PROCESS_CREATION_MITIGATION_POLICY_BOTTOM_UP_ASLR_ALWAYS_ON (0x00010000)
#         PROCESS_CREATION_MITIGATION_POLICY_BOTTOM_UP_ASLR_ALWAYS_OFF (0x00020000)
#         The bottom-up randomization policy, which includes stack randomization options, causes a random location to be used as the lowest user address.
# 
#         For instance, to enable PROCESS_CREATION_MITIGATION_POLICY_DEP_ENABLE and PROCESS_CREATION_MITIGATION_POLICY_FORCE_RELOCATE_IMAGES_ALWAYS_ON, disable PROCESS_CREATION_MITIGATION_POLICY_BOTTOM_UP_ASLR_ALWAYS_OFF, and to leave all other options at their default values, specify a value of:
#         ???????????????0???????1???????1
# 
#         Setting flags not specified here to any value other than ? results in undefined behavior.
# 
Process Mitigation Options:
  lgpo.set:
  - name: ProcessMitigationOptions
  - setting:
      ProcessMitigationOptionsList:
      - placeholder1
      - placeholder2
  - policy_class: User
