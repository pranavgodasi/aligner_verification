coverage exclude -scope /testbench/dut -togglenode {prdata[20]} {prdata[21]} {prdata[22]} {prdata[23]} {prdata[24]} {prdata[25]} {prdata[26]} {prdata[27]} {prdata[28]} {prdata[29]}
coverage exclude -scope /testbench/dut -togglenode {prdata[30]} {prdata[31]}
coverage exclude -scope /testbench/dut -togglenode {prdata[12]} {prdata[13]} {prdata[14]} {prdata[15]}
coverage exclude -scope /testbench/dut/core -togglenode {prdata[20]} {prdata[21]} {prdata[22]} {prdata[23]} {prdata[24]} {prdata[25]} {prdata[26]} {prdata[27]} {prdata[28]} {prdata[29]}
coverage exclude -scope /testbench/dut/core -togglenode {prdata[30]} {prdata[31]}
coverage exclude -scope /testbench/dut/core -togglenode {prdata[12]} {prdata[13]} {prdata[14]} {prdata[15]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {addr_aligned[0]} {addr_aligned[1]} {prdata[20]} {prdata[21]} {prdata[22]} {prdata[23]} {prdata[24]} {prdata[25]} {prdata[26]} {prdata[27]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {prdata[28]} {prdata[29]} {prdata[30]} {prdata[31]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {prdata[12]} {prdata[13]} {prdata[14]} {prdata[15]}

coverage exclude -scope /testbench/dut/core/regs -togglenode {status_rd_val[20]} {status_rd_val[21]} {status_rd_val[22]} {status_rd_val[23]} {status_rd_val[24]} {status_rd_val[25]} {status_rd_val[26]} {status_rd_val[27]} {status_rd_val[28]} {status_rd_val[29]} {status_rd_val[30]} {status_rd_val[31]}

coverage exclude -scope /testbench/dut/core/regs -togglenode {status_rd_val[12]} {status_rd_val[13]} {status_rd_val[14]} {status_rd_val[15]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {ctrl_rd_val[20]} {ctrl_rd_val[21]} {ctrl_rd_val[22]} {ctrl_rd_val[23]} {ctrl_rd_val[24]} {ctrl_rd_val[25]} {ctrl_rd_val[26]} {ctrl_rd_val[27]} {ctrl_rd_val[28]} {ctrl_rd_val[29]} {ctrl_rd_val[30]} {ctrl_rd_val[31]}

coverage exclude -scope /testbench/dut/core/regs -togglenode {ctrl_rd_val[10]} {ctrl_rd_val[11]} {ctrl_rd_val[12]} {ctrl_rd_val[13]} {ctrl_rd_val[14]} {ctrl_rd_val[15]} {ctrl_rd_val[16]} {ctrl_rd_val[17]} {ctrl_rd_val[18]} {ctrl_rd_val[19]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {ctrl_rd_val[3]} {ctrl_rd_val[4]} {ctrl_rd_val[5]} {ctrl_rd_val[6]} {ctrl_rd_val[7]}

coverage exclude -scope /testbench/dut/core/regs -togglenode {irq_rd_val[20]} {irq_rd_val[21]} {irq_rd_val[22]} {irq_rd_val[23]} {irq_rd_val[24]} {irq_rd_val[25]} {irq_rd_val[26]} {irq_rd_val[27]} {irq_rd_val[28]} {irq_rd_val[29]} {irq_rd_val[30]} {irq_rd_val[31]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {irq_rd_val[10]} {irq_rd_val[11]} {irq_rd_val[12]} {irq_rd_val[13]} {irq_rd_val[14]} {irq_rd_val[15]} {irq_rd_val[16]} {irq_rd_val[17]} {irq_rd_val[18]} {irq_rd_val[19]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {irq_rd_val[8]} {irq_rd_val[9]} {irq_rd_val[5]} {irq_rd_val[6]} {irq_rd_val[7]}

coverage exclude -scope /testbench/dut/core/regs -togglenode {irqen_rd_val[20]} {irqen_rd_val[21]} {irqen_rd_val[22]} {irqen_rd_val[23]} {irqen_rd_val[24]} {irqen_rd_val[25]} {irqen_rd_val[26]} {irqen_rd_val[27]} {irqen_rd_val[28]} {irqen_rd_val[29]} {irqen_rd_val[30]} {irqen_rd_val[31]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {irqen_rd_val[10]} {irqen_rd_val[11]} {irqen_rd_val[12]} {irqen_rd_val[13]} {irqen_rd_val[14]} {irqen_rd_val[15]} {irqen_rd_val[16]} {irqen_rd_val[17]} {irqen_rd_val[18]} {irqen_rd_val[19]}
coverage exclude -scope /testbench/dut/core/regs -togglenode {irqen_rd_val[8]} {irqen_rd_val[9]} {irqen_rd_val[5]} {irqen_rd_val[6]} {irqen_rd_val[7]}

# Waive row 1 at line 132 in tx_fifo
coverage exclude \
  -src ../../rtl/cfs_synch_fifo.v \
  -scope merged:/testbench/dut/core/tx_fifo \
  -feccondrow 132 1 \
  -comment "Excluding unreachable condition (row 1) at line 132 in tx_fifo"

# Waive row 1 at line 156 in tx_fifo
coverage exclude \
  -src ../../rtl/cfs_synch_fifo.v \
  -scope merged:/testbench/dut/core/tx_fifo \
  -feccondrow 156 1 \
  -comment "Excluding unreachable condition (row 1) at line 156 in tx_fifo"

# Waive row 1 at line 132 in rx_fifo
coverage exclude \
  -src ../../rtl/cfs_synch_fifo.v \
  -scope merged:/testbench/dut/core/rx_fifo \
  -feccondrow 132 1 \
  -comment "Excluding unreachable condition (row 1) at line 132 in rx_fifo"

  
# Waive row 1,3 at line 76 in rx_ctrl
coverage exclude \
  -src ../../rtl/cfs_rx_ctrl.v \
  -scope merged:/testbench/dut/core/rx_ctrl \
  -feccondrow 76 1 3\
  -comment "Excluding unreachable condition (row 1,3) at line 76 in rx_ctrl"

# Waive row 3 at line 81 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 81 3 \
  -comment "Excluding unreachable condition (row 3) at line 81 in cfs_ctrl"

# Waive row 2,3,4 at line 91 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 91 2 3 4 \
  -comment "Excluding unreachable condition (row 2,3,4) at line 91 in cfs_ctrl"

# Waive row 1,3 at line 106 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 106 1 3 \
  -comment "Excluding unreachable condition (row 1,3) at line 106 in cfs_ctrl"

# Waive row 3 at line 112 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 112 3 \
  -comment "Excluding unreachable condition (row 3) at line 112 in cfs_ctrl"

# Waive row 2,3,4 at line 143 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 143 2 3 4 \
  -comment "Excluding unreachable condition (row 2,3,4) at line 143 in cfs_ctrl"

# Waive row 3 at line 194 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 194 3 \
  -comment "Excluding unreachable condition (row 3) at line 194 in cfs_ctrl"

# Waive row 2,3,4 at line 229 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 229 2 3 4 \
  -comment "Excluding unreachable condition (row 2,3,4) at line 229 in cfs_ctrl"
  
# Waive row 1 at line 191 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 191 1 \
  -comment "Excluding unreachable condition (row 1) at line 194 in cfs_ctrl"
  
# Waive row 1,2 at line 239 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 239 1 2 \
  -comment "Excluding unreachable condition (row 1,2) at line 239 in cfs_ctrl"
  
# Waive row 1,2 at line 249 in cfs_ctrl
coverage exclude \
  -src ../../rtl/cfs_ctrl.v \
  -scope merged:/testbench/dut/core/ctrl \
  -feccondrow 249 1 2 \
  -comment "Excluding unreachable condition (row 1,2) at line 249 in cfs_ctrl"

# Waive line 91 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 91 \
  -code b \
  -comment "Waiving uncovered branch at line 91 (cfs_ctrl)"
  
# Waive line 143 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 143 \
  -code b \
  -comment "Waiving uncovered branch at line 143 (cfs_ctrl)"
  
# Waive line 229 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 229 \
  -code b \
  -comment "Waiving uncovered branch at line 229 (cfs_ctrl)"

# Waive line 94 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 94 \
  -code s \
  -comment "Waiving uncovered statement at line 94 (cfs_ctrl)"
  
# Waive line 146-149 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 146-149 \
  -code s \
  -comment "Waiving uncovered statement at line 146-149 (cfs_ctrl)"
  
# Waive line 231 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 231 \
  -code s \
  -comment "Waiving uncovered statement at line 231 (cfs_ctrl)"
  
# Waive line 242-245 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 242-245 \
  -code s \
  -comment "Waiving uncovered statement at line 242-245 (cfs_ctrl)"
  
# Waive line 247 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 247 \
  -code s \
  -comment "Waiving uncovered statement at line 247 (cfs_ctrl)"
  
# Waive line 251 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 251 \
  -code s \
  -comment "Waiving uncovered statement at line 251 (cfs_ctrl)"
  
# Waive line 253 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 253 \
  -code s \
  -comment "Waiving uncovered statement at line 253 (cfs_ctrl)"
 
# Waive line 258-260 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 258-260 \
  -code s \
  -comment "Waiving uncovered statement at line 258-260 (cfs_ctrl)"
  
# Waive line 262 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 262 \
  -code s \
  -comment "Waiving uncovered statement at line 262 (cfs_ctrl)"
  
# Waive line 265 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 265 \
  -code s \
  -comment "Waiving uncovered statement at line 265 (cfs_ctrl)"
  
# Waive line 128 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 236 \
  -code b \
  -comment "Waiving uncovered branch at line 236 (cfs_ctrl)"
  
# Waive line 239 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 239 \
  -code b \
  -comment "Waiving uncovered branch at line 239 (rcfs_ctrl)"
  
# Waive line 255 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 255 \
  -code b \
  -comment "Waiving uncovered branch at line 255 (cfs_ctrl)"
  
# Waive line 249 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 249 \
  -code b \
  -comment "Waiving uncovered branch at line 249 (cfs_ctrl)"
  
# Waive line 252 in cfs_ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -srcfile "../../rtl/cfs_ctrl.v" \
  -linerange 252 \
  -code b \
  -comment "Waiving uncovered branch at line 252 (cfs_ctrl)"
  

  
# Exclude toggle coverage for aligned_bytes_processed[2] in ctrl
coverage exclude \
  -scope /testbench/dut/core/ctrl \
  -togglenode {aligned_bytes_processed[2]} \
  -comment "Excluding toggle coverage for aligned_bytes_processed[2] in ctrl"
