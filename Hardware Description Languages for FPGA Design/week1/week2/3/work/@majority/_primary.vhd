library verilog;
use verilog.vl_types.all;
entity Majority is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        Y               : out    vl_logic
    );
end Majority;
