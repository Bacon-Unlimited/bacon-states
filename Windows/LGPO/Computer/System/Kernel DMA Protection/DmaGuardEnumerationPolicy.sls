# windows:SUPPORTED_Windows_10_0
#
# Enumeration policy for external DMA-capable devices incompatible with DMA remapping. This policy only takes effect when Kernel DMA Protection is enabled and supported by the system. Note: this policy does not apply to 1394, PCMCIA or ExpressCard devices.
Enumeration policy for external devices incompatible with Kernel DMA Protection:
  lgpo.set:
  - name: DmaGuardEnumerationPolicy
  - setting:
      DmaGuardEnumerationPolicy_Options: enum-placeholder
  - policy_class: Machine
