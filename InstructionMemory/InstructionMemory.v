`timescale 1ns/100ps

module InstructionMemory(
    input [31:0] PC,
    output [31:0] instruction
);
    reg [31:0] Memory [31:0];

    integer i;

    initial begin
        // setar register 1 para parada estranha da memoria
        Memory[0] = 32'b00000000000000000010000010000011;
        // seta register 1 como 0
        Memory[1] = 32'b00000000000100000010000010000011;
        // seta memoria 0 como 0
        Memory[2] = 32'b00000000000000000010000000100011;
        // seta register 1 como coisa estranha
        Memory[3] = 32'b00000000000100000010000010000011;
        // seta register 2 como coisa estranha
        Memory[4] = 32'b00000000000100000010000100000011;
        // seta register 3 como soma de register 1 e 2
        Memory[5] = 32'b00000000000100010000000110110011;
        // seta register 4 como subtracao de register 1 e 2
        Memory[6] = 32'b01000000000100010000001000110011;
        // seta register 5 como or de register 1 e 2
        Memory[7] = 32'b00000000000100010110001010110011;
        // seta register 6 como and de register 1 e 2
        Memory[8] = 32'b00000000000100010111001100110011;
        // seta pc para 0
        Memory[9] = 32'b00000000000000000000000001100011;

        for (i = 10; i < 32; i = i + 1) begin
            Memory[i] = 32'b0;
        end
    end
    
    assign instruction = Memory[PC];
endmodule