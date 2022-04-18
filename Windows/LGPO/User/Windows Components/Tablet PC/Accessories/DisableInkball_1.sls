# windows:SUPPORTED_WindowsVistaOnly
#
# Prevents start of InkBall game.
# 
# If you enable this policy, the InkBall game will not run.
# 
# If you disable this policy, the InkBall game will run.
# 
# If you do not configure this policy, the InkBall game will run.
Do not allow Inkball to run:
  lgpo.set:
  - name: DisableInkball_1
  - setting: Enabled
  - policy_class: User
