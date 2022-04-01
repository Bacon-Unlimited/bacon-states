# 301To4
#
# Enabling this policy prevents Windows Desktop Search from using iFilters and protocol handlers unless they are specified in the allow list. However, This policy will not prevent iFilters or protocol handlers from being installed, nor will it prevent them from being used by other applications or services. 
# You can also specify an allow list of add-ins by providing the classID or ProgId string. For example, if you plan to deploy a particular iFilter, make sure that this iFilter is on the allow list, either as a GUID such as {xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx} (include the braces) or a ProgID such as VisFilter.CFilter.1.
# 
# If you maintain a locked desktop environment, this setting is redundant because non-administrative users do not have permission to install new components. If your users have Administrator permissions or can install software, this policy prevents them from specifically using Windows Desktop Search-related add-ins.
# 
# Note: Because of a limitation in the Group Policy editor, you must add at least one entry in the allow list, even if you want to enable this policy without an allow list. Create a list entry by putting a space in the name field and a space in the value field and then save it. This will create a placeholder entry that is ignored by the program.
Prevent unwanted iFilters and protocol handlers:
  lgpo.set:
  - name: PreventUnwantedAddins
  - setting:
      PreventUnwantedAddins_AllowList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
