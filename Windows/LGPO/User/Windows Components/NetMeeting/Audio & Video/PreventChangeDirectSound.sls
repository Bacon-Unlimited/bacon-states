# SUPPORTED_NetMeeting3
#
# Prevents user from changing the DirectSound audio setting.  DirectSound provides much better audio quality, but older audio hardware may not support it.
Prevent changing DirectSound Audio setting:
  lgpo.set:
  - name: PreventChangeDirectSound
  - setting: Enabled
  - policy_class: User
