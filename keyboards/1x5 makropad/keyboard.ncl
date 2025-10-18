let { DirectPinKey, .. } = import "fak/keyboard.ncl" in
let { CH552G, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552G,
  usb_dev = {
    vendor_id = 4489,  # 0x1189
    product_id = 34960, # 0x8890
    product_ver = 0,  # 0x0100
  },
  keys =
    let D = DirectPinKey in
    [
      D 11,  # 0: P1.1  left key
      D 17,  # 1: P1.7  middle key
      D 16,  # 2: P1.6  right key
      D 31,  # 3: P3.1  knob turn left
      D 30,  # 4: P3.0  knob turn right
      D 33,  # 5: P3.3  knob press
  ],
}
}