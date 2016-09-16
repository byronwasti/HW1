// Homework 1

module demorgan1
(
    input A,
    input B,
    output AandB,
    output nAandB
);

    wire AandB;
    and andgate(AandB, A, B);
    not notgate(nAandB, AandB);

endmodule

module demorgan2
(
    input A,
    input B,
    output nA,
    output nB,
    output nAornB
);
    wire nA;
    wire nB;
    not Ainv(nA, A);
    not Binv(nB, B);
    or orgate(nAornB, nA, nB);

endmodule

module demorgan3
(
    input A,
    input B,
    output AorB,
    output nAorB
);
    wire AorB;
    or orgate(AorB, A, B);
    not notgate(nAorB, AorB);

endmodule

module demorgan4
(
    input A,
    input B,
    output nA,
    output nB,
    output nAandnB
);

    wire nA;
    wire nB;
    not Ainv(nA, A);
    not Binv(nB, B);
    and andgate(nAandnB, nA, nB);

endmodule
