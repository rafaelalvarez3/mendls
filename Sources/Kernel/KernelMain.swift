import MMIO

let gpio = GPIO(unsafeAddress: 0xFE00_0000)

// add miniUART here

func enableMiniUART(Void) -> Void {
    gpio.gpfsel1.modify {
        $0.fsel14b1 = false     // Enables alternate function 5 for GPIO Pin 14
        $0.fsel14b2 = true
        $0.fsel14b3 = false
        
        $0.fsel15b1 = false     // Enables alternate function 5 for GPIO Pin 15
        $0.fsel15b2 = true
        $0.fsel15b3 = false
    }
}

@main
struct KernelMain {
    static func main() {
        enableMiniUART()
        while true {
            // Code here
        }
    }
}
