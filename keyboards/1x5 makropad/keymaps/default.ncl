# Layer 0:
#  - 0: 'a'
#  - 1: Ctrl+C
#  - 2: Win+V (GUI+V)
#  - 3: Media Volume Down
#  - 4: Media Volume Up
#  - 5: Media Mute (toggle)

{
  layers = {
    "0" = [
      # 0: left key -> 'a'
      tap.reg.kc.A,

      # 1: middle key -> Ctrl+C
      # Combine a regular key with a modifier press
      tap.reg.kc.C & tap.reg.mod.LCTRL,

      # 2: right key -> Win+V (GUI+Q)
      tap.reg.kc.QQ & tap.reg.mod.LGUI,

      # 3: knob turn left -> Volume Down
      # Depending on FAK version, consumer/media codes may be under consumer.* or kc.*.
      # Try consumer first; if not available, use kc.VOLD / kc.VOLU / kc.MUTE.
      tap.reg.consumer.VOLD,

      # 4: knob turn right -> Volume Up
      tap.reg.consumer.VOLU,

      # 5: knob press -> Mute toggle
      tap.reg.consumer.MUTE,
    ],
  },
}