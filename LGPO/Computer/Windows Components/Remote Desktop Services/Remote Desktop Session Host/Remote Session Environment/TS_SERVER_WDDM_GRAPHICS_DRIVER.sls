# windows:SUPPORTED_Windows_10_0_RS6
#
# This policy setting lets you enable WDDM graphics display driver for Remote Desktop Connections.
# 
# If you enable or do not configure this policy setting, Remote Desktop Connections will use WDDM graphics display driver.
# 
# If you disable this policy setting, Remote Desktop Connections will NOT use WDDM graphics display driver. In this case, the Remote Desktop Connections will use XDDM graphics display driver.
# 
# For this change to take effect, you must restart Windows.
#     
Use WDDM graphics display driver for Remote Desktop Connections:
  lgpo.set:
  - name: TS_SERVER_WDDM_GRAPHICS_DRIVER
  - setting: Enabled
  - policy_class: Machine
