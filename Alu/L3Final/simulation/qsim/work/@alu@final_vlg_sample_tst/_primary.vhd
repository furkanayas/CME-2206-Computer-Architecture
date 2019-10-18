library verilog;
use verilog.vl_types.all;
entity AluFinal_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        ground          : in     vl_logic_vector(3 downto 0);
        p1p2            : in     vl_logic_vector(1 downto 0);
        Po              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end AluFinal_vlg_sample_tst;
