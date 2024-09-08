onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sim/uut/A
add wave -noupdate /sim/uut/B
add wave -noupdate /sim/uut/prog
add wave -noupdate /sim/uut/statu
add wave -noupdate -radix unsigned /sim/uut/PC
add wave -noupdate /sim/uut/ram_we
add wave -noupdate /sim/uut/P
add wave -noupdate /sim/uut/ram_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {100627760 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {833139210 fs} {939254010 fs}
