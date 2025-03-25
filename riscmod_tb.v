`timescale 1ns / 1ps

module RISC_CPU_tb;
    reg clk;
    reg rst;

    
    RISC_CPU uut (
        .clk(clk),
        .rst(rst)
    );

   
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1;

       
        #10 rst = 0;

        
        #100;

       
        $finish;
    end

  
    initial begin
        $monitor("Time: %0t | PC: %0d | R0: %0d | R1: %0d",
                 $time, uut.pc, uut.regfile[0], uut.regfile[1]);
    end
endmodule
