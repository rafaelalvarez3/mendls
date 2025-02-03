import MMIO

@RegisterBlock
struct UART {

    @RegisterBlock(offset: 0x201018)
    var uart_flag_register: Register<FR>
    
    @RegisterBlock(offset: 0x201024)
    var uart_integer_baud_rate_divisor: Register<IBRD>
    
    @RegisterBlock(offset: 0x201028)
    var uart_fractional_baud_rate_divisor: Register<FBRD>
    
    @RegisterBlock(offset: 0x20102c)
    var uart_line_control_register: Register<LCRH>
    
    @RegisterBlock(offset: 0x201030)
    var uart_control_register: Register<CR>
    
    @RegisterBlock(offset: 0x201044)
    var uart_interrupt_clear_register: Register<ICR>
    
}
