library verilog;
use verilog.vl_types.all;
entity AluFinal_vlg_check_tst is
    port(
        Aluout          : in     vl_logic_vector(3 downto 0);
        cout            : in     vl_logic;
        overflow        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end AluFinal_vlg_check_tst;
