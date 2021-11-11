library verilog;
use verilog.vl_types.all;
entity Adder_1bit is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cin             : in     vl_logic;
        Sum             : out    vl_logic;
        Cout            : out    vl_logic
    );
end Adder_1bit;
