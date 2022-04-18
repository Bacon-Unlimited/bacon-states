# SUPPORTED_IE8
#
# This policy setting allows you to turn Caret Browsing on or off. Caret Browsing allows users to browse to a webpage by using the keyboard to move the cursor. Caret Browsing supports standard text-editor functionality, such as using the Shift key to select text and copying a selection to the clipboard. This policy setting is particularly useful to users who do not use a mouse.
# 
# If you enable this policy setting, Caret Browsing is turned on.
# 
# If you disable this policy setting, Caret Browsing is turned off.
# 
# If you do not configure this policy setting, Caret Browsing support can be turned on or off through the registry.
Turn on Caret Browsing support:
  lgpo.set:
  - name: Advanced_EnableCaretBrowsing
  - setting: Enabled
  - policy_class: User
