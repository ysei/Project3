--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.1
--  \   \         Application : xaw2vhdl
--  /   /         Filename : clock54_14.vhd
-- /___/   /\     Timestamp : 12/14/2010 13:40:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: xaw2vhdl-intstyle D:/Documents and Settings/Administrator/Desktop/Project3/if/ipcore_dir/clock54_14.xaw -st clock54_14.vhd
--Design Name: clock54_14
--Device: xc4vsx35-10ff668
--
-- Module clock54_14
-- Generated by Xilinx Architecture Wizard
-- Written for synthesis tool: XST
-- Period Jitter (unit interval) for block DCM_ADV_INST = 0.012 UI
-- Period Jitter (Peak-to-Peak) for block DCM_ADV_INST = 0.217 ns

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clock54_14 is
   port ( CLKIN_IN   : in    std_logic; 
          RST_IN     : in    std_logic; 
          CLKDV_OUT  : out   std_logic; 
          CLKFX_OUT  : out   std_logic; 
          CLK0_OUT   : out   std_logic; 
          LOCKED_OUT : out   std_logic);
end clock54_14;

architecture BEHAVIORAL of clock54_14 is
   signal CLKDV_BUF  : std_logic;
   signal CLKFB_IN   : std_logic;
   signal CLKFX_BUF  : std_logic;
   signal CLK0_BUF   : std_logic;
   signal GND_BIT    : std_logic;
   signal GND_BUS_7  : std_logic_vector (6 downto 0);
   signal GND_BUS_16 : std_logic_vector (15 downto 0);
begin
   GND_BIT <= '0';
   GND_BUS_7(6 downto 0) <= "0000000";
   GND_BUS_16(15 downto 0) <= "0000000000000000";
   CLK0_OUT <= CLKFB_IN;
   CLKDV_BUFG_INST : BUFG
      port map (I=>CLKDV_BUF,
                O=>CLKDV_OUT);
   
   CLKFX_BUFG_INST : BUFG
      port map (I=>CLKFX_BUF,
                O=>CLKFX_OUT);
   
   CLK0_BUFG_INST : BUFG
      port map (I=>CLK0_BUF,
                O=>CLKFB_IN);
   
   DCM_ADV_INST : DCM_ADV
   generic map( CLK_FEEDBACK => "1X",
            CLKDV_DIVIDE => 15.0,
            CLKFX_DIVIDE => 15,
            CLKFX_MULTIPLY => 4,
            CLKIN_DIVIDE_BY_2 => FALSE,
            CLKIN_PERIOD => 4.762,
            CLKOUT_PHASE_SHIFT => "NONE",
            DCM_AUTOCALIBRATION => TRUE,
            DCM_PERFORMANCE_MODE => "MAX_SPEED",
            DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
            DFS_FREQUENCY_MODE => "LOW",
            DLL_FREQUENCY_MODE => "HIGH",
            DUTY_CYCLE_CORRECTION => TRUE,
            FACTORY_JF => x"F0F0",
            PHASE_SHIFT => 0,
            STARTUP_WAIT => FALSE)
      port map (CLKFB=>CLKFB_IN,
                CLKIN=>CLKIN_IN,
                DADDR(6 downto 0)=>GND_BUS_7(6 downto 0),
                DCLK=>GND_BIT,
                DEN=>GND_BIT,
                DI(15 downto 0)=>GND_BUS_16(15 downto 0),
                DWE=>GND_BIT,
                PSCLK=>GND_BIT,
                PSEN=>GND_BIT,
                PSINCDEC=>GND_BIT,
                RST=>RST_IN,
                CLKDV=>CLKDV_BUF,
                CLKFX=>CLKFX_BUF,
                CLKFX180=>open,
                CLK0=>CLK0_BUF,
                CLK2X=>open,
                CLK2X180=>open,
                CLK90=>open,
                CLK180=>open,
                CLK270=>open,
                DO=>open,
                DRDY=>open,
                LOCKED=>LOCKED_OUT,
                PSDONE=>open);
   
end BEHAVIORAL;

