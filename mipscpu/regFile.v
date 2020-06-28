module regFile(clk,Ra,Rb,Rw,A,B,Data,Wn);
input clk,Wn;
input[4:0] Ra,Rb,Rw;
input[31:0] Data;
output[31:0] A,B;
reg[31:0] R[15:0];
integer i=0;
initial begin
for(i=0;i<16;i=i+1)
  R[i]<=i;
end
assign A=R[Ra];
assign B=R[Rb];
always@(posedge clk) begin
  if(Wn)
    R[Rw]<=Data;
end
endmodule


