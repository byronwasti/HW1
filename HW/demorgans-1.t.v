`include "demorgans.v"

module demorgan1_test (); // Have to create a separate file for each test
    reg A, B;
    wire AandB, nAandB;

    demorgan1 dut(A, B, AandB, nAandB);
    initial begin
        $display("A B | A B | ~(AB) ");            // Prints header for truth table
        A=0;B=0; #1                                 // Set A and B, wait for update (#1)
        $display("%b %b |  %b  |    %b  ", A,B, AandB, nAandB);
        A=0;B=1; #1                              // Set A and B, wait for new update
        $display("%b %b |  %b  |    %b  ", A,B, AandB, nAandB);
        A=1;B=0; #1
        $display("%b %b |  %b  |    %b  ", A,B, AandB, nAandB);
        A=1;B=1; #1
        $display("%b %b |  %b  |    %b  ", A,B, AandB, nAandB);
    end

endmodule

