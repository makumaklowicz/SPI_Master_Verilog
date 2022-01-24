<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="In_clock" />
        <signal name="btn0" />
        <signal name="MISO" />
        <signal name="Input_data(7:0)" />
        <signal name="Output_data(7:0)" />
        <signal name="MOSI" />
        <signal name="Out_clock" />
        <signal name="dzielnikwy" />
        <signal name="NCS" />
        <port polarity="Input" name="In_clock" />
        <port polarity="Input" name="btn0" />
        <port polarity="Input" name="MISO" />
        <port polarity="Input" name="Input_data(7:0)" />
        <port polarity="Output" name="Output_data(7:0)" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Output" name="Out_clock" />
        <port polarity="Output" name="NCS" />
        <blockdef name="Dzielnik_10000">
            <timestamp>2022-1-23T15:23:18</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Automat">
            <timestamp>2022-1-23T18:58:1</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Register">
            <timestamp>2022-1-23T21:6:49</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="Dzielnik_10000" name="XLXI_2">
            <blockpin signalname="In_clock" name="in_clock" />
            <blockpin signalname="dzielnikwy" name="out_clock" />
        </block>
        <block symbolname="Register" name="XLXI_4">
            <blockpin signalname="btn0" name="start" />
            <blockpin signalname="Out_clock" name="in_clock" />
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="Input_data(7:0)" name="input_data(7:0)" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="Output_data(7:0)" name="output_data(7:0)" />
        </block>
        <block symbolname="Automat" name="XLXI_5">
            <blockpin signalname="dzielnikwy" name="in_clock" />
            <blockpin signalname="btn0" name="start" />
            <blockpin signalname="Out_clock" name="out_clock" />
            <blockpin signalname="NCS" name="ncs" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="304" y="368" name="XLXI_2" orien="R0">
        </instance>
        <branch name="In_clock">
            <wire x2="304" y1="336" y2="336" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="336" name="In_clock" orien="R180" />
        <branch name="btn0">
            <wire x2="1312" y1="400" y2="400" x1="1280" />
            <wire x2="1328" y1="400" y2="400" x1="1312" />
            <wire x2="1312" y1="400" y2="624" x1="1312" />
            <wire x2="1792" y1="624" y2="624" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1280" y="400" name="btn0" orien="R180" />
        <iomarker fontsize="28" x="1888" y="336" name="Out_clock" orien="R0" />
        <iomarker fontsize="28" x="1888" y="400" name="NCS" orien="R0" />
        <branch name="MISO">
            <wire x2="1792" y1="752" y2="752" x1="1584" />
        </branch>
        <branch name="Input_data(7:0)">
            <wire x2="1792" y1="816" y2="816" x1="1632" />
        </branch>
        <branch name="Output_data(7:0)">
            <wire x2="2336" y1="816" y2="816" x1="2256" />
        </branch>
        <branch name="MOSI">
            <wire x2="2288" y1="624" y2="624" x1="2256" />
        </branch>
        <instance x="1792" y="848" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2288" y="624" name="MOSI" orien="R0" />
        <iomarker fontsize="28" x="2336" y="816" name="Output_data(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1632" y="816" name="Input_data(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1584" y="752" name="MISO" orien="R180" />
        <instance x="1328" y="432" name="XLXI_5" orien="R0">
        </instance>
        <branch name="Out_clock">
            <wire x2="1792" y1="336" y2="336" x1="1712" />
            <wire x2="1888" y1="336" y2="336" x1="1792" />
            <wire x2="1792" y1="336" y2="352" x1="1792" />
            <wire x2="1792" y1="352" y2="352" x1="1728" />
            <wire x2="1728" y1="352" y2="688" x1="1728" />
            <wire x2="1792" y1="688" y2="688" x1="1728" />
        </branch>
        <branch name="dzielnikwy">
            <wire x2="1328" y1="336" y2="336" x1="688" />
        </branch>
        <branch name="NCS">
            <wire x2="1888" y1="400" y2="400" x1="1712" />
        </branch>
    </sheet>
</drawing>