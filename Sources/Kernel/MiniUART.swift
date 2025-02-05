import MMIO

@RegisterBlock
struct MiniUART {

    @RegisterBlock(offset: 0x215000)
    var AUXILIARY_INTERRUPT_STATUS: Register<AUX_IRQ>
    
    @RegisterBlock(offset: 0x215004)
    var AUXILIARY_ENABLES: Register<AUX_ENABLES>
    
    @RegisterBlock(offset: 0x215040)
    var MINI_UART_IO_DATA: Register<AUX_MU_IO_REG>
    
    @RegisterBlock(offset: 0x215044)
    var MINI_UART_INTERRUPT_ENABLE: Register<AUX_MU_IER_REG>
    
    @RegisterBlock(offset: 0x215048)
    var MINI_UART_INTERRUPT_IDENTIFY: Register<AUX_MU_IIR_REG>
    
    @RegisterBlock(offset: 0x21504c)
    var MINI_UART_LINE_CONTROL: Register<AUX_MU_LCR_REG>
    
    @RegisterBlock(offset: 0x215050)
    var MINI_UART_MODEM_CONTROL: Register<AUX_MU_MCR_REG>
    
    @RegisterBlock(offset: 0x215054)
    var MINI_UART_LINE_STATUS: Register<AUX_MU_LSR_REG>
    
    @RegisterBlock(offset: 0x215058)
    var MINI_UART_MODEM_STATUS: Register<AUX_MU_MSR_REG>
    
    @RegisterBlock(offset: 0x21505c)
    var MINI_UART_SCRATCH: Register<AUX_MU_SCRATCH>
    
    @RegisterBlock(offset: 0x215060)
    var MINI_UART_EXTRA_CONTROL: Register<AUX_MU_CNTL_REG>
    
    @RegisterBlock(offset: 0x215064)
    var MINI_UART_EXTRA_STATUS: Register<AUX_MU_STAT_REG>
    
    @RegisterBlock(offset: 0x215068)
    var MINI_UART_BAUDRATE: Register<AUX_MU_BAUD_REG>
    
}
/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_IRQ {
    
    @Reserved(bits: 3..<32)
    
    @ReadOnly(bits: 2..<3)
    var spi_two_irq: SPI_TWO_IRQ
    
    @ReadOnly(bits: 1..<2)
    var spi_one_irq: SPI_ONE_IRQ
    
    @ReadOnly(bits: 0..<1)
    var mini_uart_irq: MINI_UART_IRQ

}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_ENABLES {
    
    @Reserved(bits: 3..<32)
    
    @ReadWrite(bits: 2..<3, as: Bool.self)
    var spi_two_enable: SPI_TWO_ENABLE
    
    @ReadWrite(bits: 1..<2, as: Bool.self)
    var spi_one_enable: SPI_ONE_ENABLE
    
    @ReadWrite(bits: 0..<1, as: Bool.self)
    var mini_uart_enable: MINI_UART_ENABLE

}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_IO_REG {
    
    @Reserved(bits: 8..<32)
    
    @ReadWrite(bits: 0..<8)
    var ls_eight_bits_baudrate: LS_EIGHT_BITS_BAUDRATE
    
    @WriteOnly(bits: 0..<8)
    var transmit_data_write: TRANSMIT_DATA_WRITE
    
    @ReadOnly(bits: 0..<8)
    var receive_data_read: RECEIVE_DATA_READ
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_IER_REG {
    
    @Reserved(bits: 8..<32)
    
    @ReadWrite(bits: 0..<8)
    var ms_eight_bits_baudrate: MS_EIGHT_BITS_BAUDRATE
    
    @ReadWrite(bits: 1..<2, as: Bool.self)
    var enable_receive_interrupt: ENABLE_RECEIVE_INTERRUPT
    
    @ReadWrite(bits: 0..<1, as: Bool.self)
    var enable_receive_interrupt: ENABLE_RECEIVE_INTERRUPT
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_IIR_REG {
    // map bits
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_LCR_REG {
    
    @Reserved(bits: 8..<32)
    
    @ReadWrite(bits: 6..<7, as: Bool.self)
    var break_condition: BREAK_CONDITION
    
    @ReadWrite(bits: 7..<8, as: Bool.self)
    var dlab_access: DLAB_ACCESS
    
    @Reserved(bits: 1..<6)
    
    @ReadWrite(bits: 0..<1, as: Bool.self)
    var data_size: DATA_SIZE
    
}
