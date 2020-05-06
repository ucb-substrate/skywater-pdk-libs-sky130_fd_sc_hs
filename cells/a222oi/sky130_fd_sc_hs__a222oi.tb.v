/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_HS__A222OI_TB_V
`define SKY130_FD_SC_HS__A222OI_TB_V

/**
 * a222oi: 2-input AND into all inputs of 3-input NOR.
 *
 *         Y = !((A1 & A2) | (B1 & B2) | (C1 & C2))
 *
 * Autogenerated test bench.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hs__a222oi.v"

module top();

    // Inputs are registered
    reg A1;
    reg A2;
    reg B1;
    reg B2;
    reg C1;
    reg C2;
    reg VPWR;
    reg VGND;

    // Outputs are wires
    wire Y;

    initial
    begin
        // Initial state is x for all inputs.
        A1   = 1'bX;
        A2   = 1'bX;
        B1   = 1'bX;
        B2   = 1'bX;
        C1   = 1'bX;
        C2   = 1'bX;
        VGND = 1'bX;
        VPWR = 1'bX;

        #20   A1   = 1'b0;
        #40   A2   = 1'b0;
        #60   B1   = 1'b0;
        #80   B2   = 1'b0;
        #100  C1   = 1'b0;
        #120  C2   = 1'b0;
        #140  VGND = 1'b0;
        #160  VPWR = 1'b0;
        #180  A1   = 1'b1;
        #200  A2   = 1'b1;
        #220  B1   = 1'b1;
        #240  B2   = 1'b1;
        #260  C1   = 1'b1;
        #280  C2   = 1'b1;
        #300  VGND = 1'b1;
        #320  VPWR = 1'b1;
        #340  A1   = 1'b0;
        #360  A2   = 1'b0;
        #380  B1   = 1'b0;
        #400  B2   = 1'b0;
        #420  C1   = 1'b0;
        #440  C2   = 1'b0;
        #460  VGND = 1'b0;
        #480  VPWR = 1'b0;
        #500  VPWR = 1'b1;
        #520  VGND = 1'b1;
        #540  C2   = 1'b1;
        #560  C1   = 1'b1;
        #580  B2   = 1'b1;
        #600  B1   = 1'b1;
        #620  A2   = 1'b1;
        #640  A1   = 1'b1;
        #660  VPWR = 1'bx;
        #680  VGND = 1'bx;
        #700  C2   = 1'bx;
        #720  C1   = 1'bx;
        #740  B2   = 1'bx;
        #760  B1   = 1'bx;
        #780  A2   = 1'bx;
        #800  A1   = 1'bx;
    end

    sky130_fd_sc_hs__a222oi dut (.A1(A1), .A2(A2), .B1(B1), .B2(B2), .C1(C1), .C2(C2), .VPWR(VPWR), .VGND(VGND), .Y(Y));

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_HS__A222OI_TB_V