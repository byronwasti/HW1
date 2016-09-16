`include "demorgans.v"

module demorgan3_test (); // Have to create a separate file for each test
    reg A, B;
    wire AorB, nAorB;

    demorgan3 dut(A, B, AorB, nAorB);
    initial begin
        $display("A B | A+B | ~(A+B) ");            // Prints header for truth table
        A=0;B=0; #1                                 // Set A and B, wait for update (#1)
        $display("%b %b |  %b  |    %b  ", A,B, AorB, nAorB);
        A=0;B=1; #1                              // Set A and B, wait for new update
        $display("%b %b |  %b  |    %b  ", A,B, AorB, nAorB);
        A=1;B=0; #1
        $display("%b %b |  %b  |    %b  ", A,B, AorB, nAorB);
        A=1;B=1; #1
        $display("%b %b |  %b  |    %b  ", A,B, AorB, nAorB);
    end

endmodule

