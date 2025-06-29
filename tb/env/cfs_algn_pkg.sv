///////////////////////////////////////////////////////////////////////////////
// File:        cfs_algn_pkg.sv
// Author:      Cristian Florin Slav
// Date:        2023-06-27
// Description: Environment package.
///////////////////////////////////////////////////////////////////////////////
`ifndef CFS_ALGN_PKG_SV
  `define CFS_ALGN_PKG_SV

  `include "uvm_macros.svh"

  `include "../agent_uvm_ext/uvm_ext_pkg.sv"
  `include "../agent_apb/cfs_apb_pkg.sv"
  `include "../agent_md/cfs_md_pkg.sv"
  `include "../model/cfs_algn_reg_pkg.sv"
  `include "../model/cfs_algn_if.sv"
  package cfs_algn_pkg;
    import uvm_pkg::*;
    import uvm_ext_pkg::*;
    import cfs_apb_pkg::*;
    import cfs_md_pkg::*;
    import cfs_algn_reg_pkg::*;

    `include "../model/cfs_algn_types.sv"
    `include "cfs_algn_env_config.sv"
    `include "../model/cfs_algn_clr_cnt_drop.sv"
    `include "../model/cfs_algn_model.sv"
    `include "../model/cfs_algn_reg_access_status_info.sv"
    `include "../model/cfs_algn_reg_predictor.sv"
    `include "../model/cfs_apb_reg_adapter.sv"
    `include "../scoreboard/cfs_algn_scoreboard.sv"
    `include "cfs_algn_env.sv"

    `include "../model/cfs_algn_seq_reg_config.sv"
  endpackage

`endif
