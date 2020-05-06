/*
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


`ifndef SKY130_FD_SC_HS__DFRBP_BEHAVIORAL_PP_V
`define SKY130_FD_SC_HS__DFRBP_BEHAVIORAL_PP_V

/**
 * dfrbp: Delay flop, inverted reset, complementary outputs.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`default_nettype none

// Import sub cells.
`include "../u_df_p_r_no_pg/sky130_fd_sc_hs__u_df_p_r_no_pg.v"

`celldefine
module sky130_fd_sc_hs__dfrbp (
    VPWR   ,
    VGND   ,
    Q      ,
    Q_N    ,
    CLK    ,
    D      ,
    RESET_B
);

    // Module ports
    input  VPWR   ;
    input  VGND   ;
    output Q      ;
    output Q_N    ;
    input  CLK    ;
    input  D      ;
    input  RESET_B;

    // Local signals
    wire buf_Q          ;
    wire RESET          ;
    reg  notifier       ;
    wire D_delayed      ;
    wire RESET_B_delayed;
    wire CLK_delayed    ;
    wire awake          ;
    wire cond0          ;
    wire cond1          ;

    //                              Name             Output  Other arguments
    not                             not0            (RESET , RESET_B_delayed                                    );
    sky130_fd_sc_hs__u_df_p_r_no_pg u_df_p_r_no_pg0 (buf_Q , D_delayed, CLK_delayed, RESET, notifier, VPWR, VGND);
    assign cond0 = ( awake && ( RESET_B_delayed === 1'b1 ) );
    assign cond1 = ( awake && ( RESET_B === 1'b1 ) );
    buf                             buf0            (Q     , buf_Q                                              );
    not                             not1            (Q_N   , buf_Q                                              );

endmodule
`endcelldefine

`default_nettype wire
`endif  // SKY130_FD_SC_HS__DFRBP_BEHAVIORAL_PP_V