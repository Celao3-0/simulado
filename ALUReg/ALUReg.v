module ALUReg (
    input wire [31:0] ALUResult,
    input clk,
    output reg [31:0] currentResult
);
    initial begin
        currentResult = 32'd0;
    end
    always @(posedge clk, ALUResult) begin
        currentResult = ALUResult;
    end
endmodule