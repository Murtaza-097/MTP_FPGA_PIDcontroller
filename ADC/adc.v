module spi_interface (
    clk,
    sclk,
    din,
    dout,
    cs,
    dataout,
    clock_out
);
input clk;
output reg din;
input dout[7:0];
output wire sclk;
output reg cs;
reg ADD2,ADD1,ADD0;
reg[3:0] count;
output reg[11:0] dataout;
reg[11:0] data_temp;
reg clock_out;
output reg clock_out = 0;
initial begin
    count = 4'd0;
    ADD2 =0;
    ADD1 = 1;
    ADD0 = 0;
    cs = 1;
    dataout = 12'd0;
    data_temp = 12'd0;
end

always@(negedge clk) begin
    if (count == 1)
    begin
        cs <= 0;
    end
end
assign sclk = cs?1:clk; // hardware sclk to clk
always @(posedge clk) begin
    count <=count+4'd1;
end

always @(posedge clk) begin
    case (count) 
    
    3 : begin
    din<= ADD2;
    end
    4 : begin
    din<= ADD1;
    end
    5 : begin
    din<= ADD0;
    end
    endcase
end

always@(posedge clk)
begin
case(count)
4: dataout<= data_temp;
5: data_temp[11] <= dout;
6: data_temp[10] <= dout;
7: data_temp[9] <= dout;
8: data_temp[8] <= dout;
9: data_temp[7] <= dout;
10: begin data_temp[6] <= dout;
clock_out <=1;
end 
11:begin data_temp[5] <= dout;
clock_out <=0; end
12: data_temp[4] <= dout;
13: data_temp[3] <= dout;
14: data_temp[2] <= dout;
15:  data_temp[1] <= dout;
16:  data_temp[0] <= dout;
endcase
end
endmodule