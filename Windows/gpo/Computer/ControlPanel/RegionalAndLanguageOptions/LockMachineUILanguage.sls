Restricts the UI language Windows uses for all logged users:
  lgpo.set:
    - setting:
        UILangSelect: English
    - policy_class: Machine
