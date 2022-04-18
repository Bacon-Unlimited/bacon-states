# windows:SUPPORTED_Windows_10_0
#
# Specifies whether the device will receive updates to the speech recognition and speech synthesis models. 
#       
# A speech model contains data used by the speech engine to convert audio to text (or vice-versa). The models are periodically updated to improve accuracy and performance. Models are non-executable data files. 
# 
# If enabled (default), the device will periodically check for updated speech models and then download them from a Microsoft service using the Background Internet Transfer Service (BITS).
Allow Automatic Update of Speech Data:
  lgpo.set:
  - name: AllowSpeechModelUpdate
  - setting: Enabled
  - policy_class: Machine
