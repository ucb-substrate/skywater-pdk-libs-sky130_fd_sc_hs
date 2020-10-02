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

`ifndef SKY130_FD_SC_HS__EBUFN_8_V
`define SKY130_FD_SC_HS__EBUFN_8_V

/**
 * ebufn: Tri-state buffer, negative enable.
 *
 * Verilog wrapper for ebufn with size of 8 units.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hs__ebufn.v"

`ifdef USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hs__ebufn_8 (
    A   ,
    TE_B,
    Z   ,
    VPWR,
    VGND
);

    input  A   ;
    input  TE_B;
    output Z   ;
    input  VPWR;
    input  VGND;
    sky130_fd_sc_hs__ebufn base (
        .A(A),
        .TE_B(TE_B),
        .Z(Z),
        .VPWR(VPWR),
        .VGND(VGND)
    );

endmodule
`endcelldefine

/*********************************************************/
`else // If not USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hs__ebufn_8 (
    A   ,
    TE_B,
    Z   ,
    VPWR,
    VGND
);

    input  A   ;
    input  TE_B;
    output Z   ;
    input  VPWR;
    input  VGND;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;

    sky130_fd_sc_hs__ebufn base (
        .A(A),
        .TE_B(TE_B),
        .Z(Z)
    );

endmodule
`endcelldefine

/*********************************************************/
`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_SC_HS__EBUFN_8_V
