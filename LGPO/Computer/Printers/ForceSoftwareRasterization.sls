# windows:SUPPORTED_Windows8
#
# Determines whether the XPS Rasterization Service or the XPS-to-GDI conversion (XGC) is forced to use a software rasterizer instead of a Graphics Processing Unit (GPU) to rasterize pages.
# 
# This setting may improve the performance of the XPS Rasterization Service or the XPS-to-GDI conversion (XGC) on machines that have a relatively powerful CPU as compared to the machines GPU.
Always rasterize content to be printed using a software rasterizer:
  lgpo.set:
  - name: ForceSoftwareRasterization
  - setting: Enabled
  - policy_class: Machine
