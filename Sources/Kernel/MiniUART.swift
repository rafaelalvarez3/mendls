import MMIO

@RegisterBlock
struct MiniUART {

    @RegisterBlock(offset: 0x00)
    var AUXILIARY_INTERRUPT_STATUS: Register<AUX_IRQ>
    
    @RegisterBlock(offset: 0x04)
    var AUXILIARY_ENABLES: Register<AUX_ENABLES>
    
    @RegisterBlock(offset: 0x40)
    var MINI_UART_IO_DATA: Register<AUX_MU_IO_REG>
    
    @RegisterBlock(offset: 0x44)
    var MINI_UART_INTERRUPT_ENABLE: Register<AUX_MU_IER_REG>
    
    @RegisterBlock(offset: 0x48)
    var MINI_UART_INTERRUPT_IDENTIFY: Register<AUX_MU_IIR_REG>
    
    @RegisterBlock(offset: 0x4c)
    var MINI_UART_LINE_CONTROL: Register<AUX_MU_LCR_REG>
    
    @RegisterBlock(offset: 0x50)
    var MINI_UART_MODEM_CONTROL: Register<AUX_MU_MCR_REG>
    
    @RegisterBlock(offset: 0x54)
    var MINI_UART_LINE_STATUS: Register<AUX_MU_LSR_REG>
    
    @RegisterBlock(offset: 0x58)
    var MINI_UART_MODEM_STATUS: Register<AUX_MU_MSR_REG>
    
    @RegisterBlock(offset: 0x5c)
    var MINI_UART_SCRATCH: Register<AUX_MU_SCRATCH>
    
    @RegisterBlock(offset: 0x60)
    var MINI_UART_EXTRA_CONTROL: Register<AUX_MU_CNTL_REG>
    
    @RegisterBlock(offset: 0x64)
    var MINI_UART_EXTRA_STATUS: Register<AUX_MU_STAT_REG>
    
    @RegisterBlock(offset: 0x68)
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
    var enable_transmit_interrupt: ENABLE_TRANSMIT_INTERRUPT
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_IIR_REG {
    
    @Reserved(bits: 8..<32)
    
    @ReadOnly(bits: 6..<8)
    var fifo_enables: FIFO_ENABLES
    
    @ReadOnly(bits: 4..<6)                              // Not in use, but it should be
    var always_zero: ALWAYS_ZERO                        // mapped and known.
    
    @ReadOnly(bits: 3..<4)                              // Not in use, but it should be
    var always_zero_no_timeout: ALWAYS_ZERO_NO_TIMEOUT  // mapped and known.
    
    @ReadWrite(bits: 2..<3, as: Bool.self)
    var interrupt_fifo_rw_bit_two: INTERRUPT_FIFO_RW_BIT_TWO
    
    @ReadWrite(bits: 1..<2, as: Bool.self)
    var interrupt_fifo_rw_bit_one: INTERRUPT_FIFO_RW_BIT_ONE
    
    @ReadOnly(bits: 0..<1)
    var interrupt_pending: INTERRUPT_PENDING
    
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

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_MCR_REG {
    
    @Reserved(bits: 2..<32)
    
    @ReadWrite(bits: 1..<2)
    var rts: RTS
    
    @Reserved(bits: 0..<1)
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_LSR_REG {
    
    @Reserved(bits: 7..<32)
    
    @ReadOnly(bits: 6..<7)
    var transmitter_idle: TRANSMITTER_IDLE
    
    @ReadOnly(bits: 5..<6)
    var transmitter_empty: TRANSMITTER_EMPTY
    
    @Reserved(bits: 2..<5)
    
    @ReadOnly(bits: 1..<2)
    var receiver_overrun: RECEIVER_OVERRUN
    
    @ReadOnly(bits: 0..<1)
    var data_ready: DATA_READY
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_MSR_REG {
    
    @Reserved(bits: 5..<32)
    
    @ReadOnly(bits: 4..5)
    var cts_status: CTS_STATUS
    
    @Reserved(bits: 0..<4)
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_SCRATCH {
    
    @Reserved(bits: 8..<32)
    
    @ReadWrite(bits: 0..<8)
    var scratch: SCRATCH
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_CNTL_REG {
    // map bits
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_STAT_REG {
    
    @Reserved(bits: 28..<32)
    
    @ReadOnly(bits: 24..<28)
    var transmit_fifo_fill_level: TRANSMIT_FIFO_FILL_LEVEL
    
    @Reserved(bits: 20..<24)
    
    @ReadOnly(bits: 16..<20)
    var receive_fifo_fill_level: RECEIVE_FIFO_FILL_LEVEL
    
    @Reserved(bits: 10..<16)
    
    @ReadOnly(bits: 9..<10)
    var transmitter_done: TRANSMITTER_DONE
    
    @ReadOnly(bits: 8..<9)
    var transmit_fifo_is_empty: TRANSMIT_FIFO_IS_EMPTY
    
    @ReadOnly(bits: 7..<8)
    var cts_line: CTS_LINE
    
    @ReadOnly(bits: 6..<7)
    var rts_status: RTS_STATUS
    
    @ReadOnly(bits: 5..<6)
    var transmit_fifo_is_full: TRANSMIT_FIFO_IS_FULL
    
    @ReadOnly(bits: 4..<5)
    var receiver_overrun: RECEIVER_OVERRUN
    
    @ReadOnly(bits: 3..<4)
    var transmitter_is_idle: TRANSMITTER_IS_IDLE
    
    @ReadOnly(bits: 2..<3)
    var receiver_is_idle: RECEIVER_IS_IDLE
    
    @ReadOnly(bits: 1..<2)
    var space_available: SPACE_AVAILABLE
    
    @ReadOnly(bits: 0..<1)
    var symbol_available: SYMBOL_AVAILABLE
    
    
}

/* ---------------------------------------------------------------------------------- */

@Register(bitWidth: 32)
struct AUX_MU_BAUD_REG {
    
    @Reserved(bits: 16..<32)
    
    @ReadWrite(bits: 0..<16)
    var baudrate: BAUDRATE
    
}

/* ---------------------------------------------------------------------------------- */
