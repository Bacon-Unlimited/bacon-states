# SUPPORTED_IE5_6
#
# Specifies which buttons will be displayed on the standard toolbar in Microsoft Internet Explorer.
# 
# If you enable this policy, you can specify whether or not each button will be displayed by selecting or clearing the check boxes for each button.
# 
# If you disable this policy or do not configure it, the standard toolbar will be displayed with its default settings, unless users customize it.
Configure Toolbar Buttons:
  lgpo.set:
  - name: ToolbarButtons
  - setting:
      Btn_Back: boolean-placeholder
      Btn_Copy: boolean-placeholder
      Btn_Cut: boolean-placeholder
      Btn_Discussions: boolean-placeholder
      Btn_Edit: boolean-placeholder
      Btn_Encoding: boolean-placeholder
      Btn_Favorites: boolean-placeholder
      Btn_Folders: boolean-placeholder
      Btn_Forward: boolean-placeholder
      Btn_Fullscreen: boolean-placeholder
      Btn_History: boolean-placeholder
      Btn_Home: boolean-placeholder
      Btn_MailNews: boolean-placeholder
      Btn_Paste: boolean-placeholder
      Btn_Print: boolean-placeholder
      Btn_Refresh: boolean-placeholder
      Btn_Search: boolean-placeholder
      Btn_Size: boolean-placeholder
      Btn_Stop: boolean-placeholder
      Btn_Tools: boolean-placeholder
  - policy_class: User
