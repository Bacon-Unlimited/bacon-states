# windows:SUPPORTED_Windows7Only
#
# Turn off Panning       
# Turns off touch panning, which allows users pan inside windows by touch.  On a compatible PC with a touch digitizer, by default users are able to scroll or pan inside a scrolling area by dragging up or down directly on the scrolling content.
# 
# If you enable this setting, the user will not be able to pan windows by touch. 
# 
# If you disable this setting, the user can pan windows by touch.
# 
# If you do not configure this setting, Touch Panning is on by default.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Turn off Touch Panning:
  lgpo.set:
  - name: PanningEverywhereOff_2
  - setting: Enabled
  - policy_class: Machine
