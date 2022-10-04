####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Printers\ForceSoftwareRasterization.sls
#
# SUPPORTED WINDOWS OS
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
