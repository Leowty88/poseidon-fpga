<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="poseidon_top" name="poseidon_hls">
    <files>
        <file name="../../poseidon_tb.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="poseidon.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="/home/bcs7944/poseidon-fpga/data">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

