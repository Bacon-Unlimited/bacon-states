# this one is apparently valid for Both (User/Machine)
# don't quite understand what it does
#  but help has interesting info
# maybe we end up parsing 

SettingsPageVisibility:
  lgpo.set:
    - setting:
        SettingsPageVisibilityBox: "hide:phone"
    - policy_class: Machine
