`timescale 1ns/100ps
module testbench();
    reg reset;
    riscv UUT (.reset(reset));
    initial begin
        reset = 1'b0;
        #5
        reset = 1'b1;
        #5
        reset = 1'b0;


        #100000
        $finish;
    end
endmodule