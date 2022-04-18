# windows:SUPPORTED_WindowsVista
#
# 
#         This policy setting turns off the automatic learning component of handwriting recognition personalization. 
# 
# 		Automatic learning enables the collection and storage of text and ink written by the user in order to help adapt handwriting recognition to the vocabulary and handwriting style of the user. 
# 
# 		Text that is collected includes all outgoing messages in Windows Mail, and MAPI enabled email clients, as well as URLs from the Internet Explorer browser history. The information that is stored includes word frequency and new words not already known to the handwriting recognition engines (for example, proper names and acronyms). Deleting email content or the browser history does not delete the stored personalization data. Ink entered through Input Panel is collected and stored.  
# 
# 		Note: Automatic learning of both text and ink might not be available for all languages, even when handwriting personalization is available. See Tablet PC Help for more information.
# 
# 		If you enable this policy setting, automatic learning stops and any stored data is deleted. Users cannot configure this setting in Control Panel.
# 
# 		If you disable this policy setting, automatic learning is turned on. Users cannot configure this policy setting in Control Panel. Collected data is only used for handwriting recognition, if handwriting personalization is turned on.
# 
# 		If you do not configure this policy, users can choose to enable or disable automatic learning either from the Handwriting tab in the Tablet Settings in Control Panel or from the opt-in dialog.
# 
# 		This policy setting is related to the "Turn off handwriting personalization" policy setting.
# 
# 		Note: The amount of stored ink is limited to 50 MB and the amount of text information to approximately 5 MB. When these limits are reached and new data is collected, old data is deleted to make room for more recent data.
# 
# 		Note: Handwriting personalization works only for Microsoft handwriting recognizers, and not with third-party recognizers.
Turn off automatic learning:
  lgpo.set:
  - name: ImplicitDataCollectionOff_2
  - setting: Enabled
  - policy_class: Machine
