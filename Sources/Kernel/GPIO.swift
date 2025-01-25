import MMIO

@Register(bitWidth: 32)
struct GPSET1 {
  @ReadWrite(bits: 10..<11, as: Bool.self)
  var set: SET
}

@Register(bitWidth: 32)
struct GPCLR1 {
  @ReadWrite(bits: 10..<11, as: Bool.self)
  var clear: CLEAR
}

@Register(bitWidth: 32)
struct GPFSEL4 {
  @ReadWrite(bits: 6..<7, as: Bool.self)
  var fsel42b1: FSEL42b1
  @ReadWrite(bits: 7..<8, as: Bool.self)
  var fsel42b2: FSEL42b2
  @ReadWrite(bits: 8..<9, as: Bool.self)
  var fsel42b3: FSEL42b3
}

@RegisterBlock
struct GPIO {
  @RegisterBlock(offset: 0x200020)
  var gpset1: Register<GPSET1>
  @RegisterBlock(offset: 0x20002c)
  var gpclr1: Register<GPCLR1>
  @RegisterBlock(offset: 0x200010)
  var gpfsel4: Register<GPFSEL4>
}
