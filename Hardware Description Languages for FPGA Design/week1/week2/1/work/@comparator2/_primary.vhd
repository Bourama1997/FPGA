library verilog;
use verilog.vl_types.all;
entity Comparator2 is
    port(
        A               : in     vl_logic_vector(1 downto 0);
        B               : in     vl_logic_vector(1 downto 0);
        Equals          : out    vl_logic
    );
end Comparator2;
