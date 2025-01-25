import MMIO

let gpio = GPIO(unsafeAddress: 0xFE00_0000)

func setLedOutput() {
  gpio.gpfsel2.modify {
    // set Function Select 25 (fsel25) to 001
    $0.fsel25b1 = true
    $0.fsel25b2 = false
    $0.fsel25b3 = false
  }
}

func ledOn() {
  gpio.gpset0.modify {
    $0.set = true
  }
}

func ledOff() {
  gpio.gpclr0.modify {
    $0.clear = true
  }
}

@main
struct KernelMain {
    static func main() {
        setLedOutput()
        while true {
            ledOn()
            for _ in 1..<100000 {}  // just a delay
            ledOff()
            for _ in 1..<100000 {}  // just a delay
        }
    }
}
