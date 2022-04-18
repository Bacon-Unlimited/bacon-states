# VistaOrRedist
#
# This policy setting allows words that contain diacritic characters to be treated as separate words. If you enable this policy setting, words that only differ in diacritics are treated as different words. If you disable this policy setting, words with diacritics and words without diacritics are treated as identical words. This policy setting is not configured by default. If you do not configure this policy setting, the local setting, configured through Control Panel, will be used. Note: By default, the Control Panel setting is set to treat words that differ only because of diacritics as the same word.
Allow use of diacritics:
  lgpo.set:
  - name: AllowUsingDiacritics
  - setting: Enabled
  - policy_class: Machine
