import MMIO

@RegisterBlock
struct UART0 {
    
    @RegisterBlock(offset: 0x201000)
    var uart0_data_register: Register<DR>
    
    @RegisterBlock(offset: 0x201004)
    var uart0_rsrecr: Register<RSRECR>
    
    @RegisterBlock(offset: 0x201018)
    var uart0_flag_register: Register<FR>
    
    @RegisterBlock(offset: 0x201020)    // According to the documentation, this register is not in use.
    var uart0_ilpr: Register<ILPR>      // Added anyway as my research notes indicate that ILPR should
                                        // be initialized. Test functionality later.
    @RegisterBlock(offset: 0x201024)
    var uart0_ibrd: Register<IBRD>
    
    @RegisterBlock(offset: 0x201028)
    var uart0_fbrd: Register<FBRD>
    
    @RegisterBlock(offset: 0x20102c)
    var uart0_lcrh: Register<LCRH>
    
    @RegisterBlock(offset: 0x201030)
    var uart0_control_register: Register<CR>
    
    @RegisterBlock(offset: 0x201034)
    var uart0_ifls: Register<IFLS>
    
    @RegisterBlock(offset: 0x201038)
    var uart0_imsc: Register<IMSC>
    
    @RegisterBlock(offset: 0x20103c)
    var uart0_ris: Register<RIS>
    
    @RegisterBlock(offset: 0x201040)
    var uart0_mis: Register<MIS>
    
    @RegisterBlock(offset: 0x201044)
    var uart0_icr: Register<ICR>
    
    @RegisterBlock(offset: 0x201048)
    var uart0_dmacr: Register<DMACR>
    
    @RegisterBlock(offset: 0x201080)
    var uart0_itcr: Register<ITCR>
    
    @RegisterBlock(offset: 0x201084)
    var uart0_itip: Register<ITIP>
 
    @RegisterBlock(offset: 0x201088)
    var uart0_itop: Register<ITOP>
    
    @RegisterBlock(offset: 0x20108c)
    var uart0_tdr: Register<TDR>
    
}
