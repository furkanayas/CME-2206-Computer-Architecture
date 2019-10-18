library verilog;
use verilog.vl_types.all;
entity AluFinal is
    port(
        overflow        : out    vl_logic;
        Po              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        ground          : in     vl_logic_vector(3 downto 0);
        cout            : out    vl_logic;
        Aluout          : out    vl_logic_vector(3 downto 0);
        p1p2            : in     vl_logic_vector(1 downto 0)
    );
end AluFinal;
