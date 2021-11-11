library verilog;
use verilog.vl_types.all;
entity AAC2M3P1_tb is
    generic(
        delay           : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of delay : constant is 1;
end AAC2M3P1_tb;
