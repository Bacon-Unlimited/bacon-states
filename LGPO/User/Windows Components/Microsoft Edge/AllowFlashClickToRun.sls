# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# 
#         If you enable or don’t configure the Adobe Flash Click-to-Run setting, Microsoft Edge will require a user to click the Click-to-Run button, to click the content, or for the site to appear on the auto-allowed list, before loading and running the content.
# 
# Sites get onto the auto-allowed list based on user feedback, specifically by how often the content is allowed to load and run.
#       
Configure the Adobe Flash Click-to-Run setting:
  lgpo.set:
  - name: AllowFlashClickToRun
  - setting: Enabled
  - policy_class: User
