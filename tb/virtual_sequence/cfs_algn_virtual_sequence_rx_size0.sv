///////////////////////////////////////////////////////////////////////////////
// File:        cfs_algn_virtual_sequence_rx_size0.sv
// Author:      Pranav
// Date:        2025-06-27
// Description: Virtual sequence which configures size field of a rx item as 0 
//              
///////////////////////////////////////////////////////////////////////////////
`ifndef CFS_ALGN_VIRTUAL_SEQUENCE_RX_SIZE0_SV
`define CFS_ALGN_VIRTUAL_SEQUENCE_RX_SIZE0_SV

class cfs_algn_virtual_sequence_rx_size0 extends cfs_algn_virtual_sequence_rx;

  // Aligner data width for validation
  local int unsigned algn_data_width;

  // Constraints to force size = 1 and offset = 0
  constraint fixed_size_offset {
    seq.item.data.size() == 0;
    //   seq.item.offset == 0;
    // Optional legality constraint (safety)
    (seq.item.data.size() + seq.item.offset) <= (algn_data_width / 8);
  }

  `uvm_object_utils(cfs_algn_virtual_sequence_rx_size0)

  function new(string name = "");
    super.new(name);
  endfunction

  function void pre_randomize();
    super.pre_randomize();
    algn_data_width = p_sequencer.model.env_config.get_algn_data_width();
  endfunction

endclass

`endif

