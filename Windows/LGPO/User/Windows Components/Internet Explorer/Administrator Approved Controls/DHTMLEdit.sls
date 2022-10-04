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
# LOCATION: \User\Windows Components\Internet Explorer\Administrator Approved Controls\DHTMLEdit.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# This ActiveX control enables users to edit HTML text and see a faithful rendition of how the text would look in the browser. There are two versions of the control: a more powerful version that cannot be invoked by a web site because it includes file access and other features, and a "safe for scripting" version that has restricted functionality and is intended for use by web sites.
# 
# If you enable this policy, this control will be available as an administrator approved control and can be run if the user specifies to run administrator-approved Active-X controls and plug-ins under security zones.
# 
# If you disable this policy or do not configure it, this control will not be designated as administrator-approved.
DHTML Edit Control:
  lgpo.set:
  - name: DHTMLEdit
  - setting:
      DHTMLEdit: boolean-placeholder
  - policy_class: User
