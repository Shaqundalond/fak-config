let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

# Layer 0:
#  - 0: 'a'
#  - 1: Ctrl+C
#  - 2: Win+V (GUI+V)
#  - 3: Media Volume Down
#  - 4: Media Volume Up
#  - 5: Media Mute (toggle)

{
  # layers is a list of layers; each layer is a list of key actions
  layers = [
    [
      # 0: left key -> 'a'
      tap.reg.kc.A,

      # 1: middle key -> Ctrl+C
      tap.reg.kc.C & tap.reg.mod.lctl,

      # 2: right key -> Win+V (GUI+V)
      tap.reg.kc.Q & tap.reg.mod.lgui,

      # 3: knob turn left -> Volume Down
      tap.custom.media.VOLD,

      # 4: knob turn right -> Volume Up
      tap.custom.media.VOLU,

      # 5: knob press -> Mute toggle
      tap.custom.media.MUTE,
    ],
  ],
}
