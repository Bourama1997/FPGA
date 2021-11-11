library verilog;
use verilog.vl_types.all;
entity find_errors is
    port(
        a               : in     vl_logic_vector(0 to 3);
        b               : out    vl_logic_vector(3 downto 0);
        c               : in     vl_logic_vector(5 downto 0)
    );
end find_errors;
