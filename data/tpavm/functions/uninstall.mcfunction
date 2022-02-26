scoreboard objectives remove tpa
scoreboard objectives remove tpahere
scoreboard objectives remove tpacancel
scoreboard objectives remove tpaccept
scoreboard objectives remove tpdeny
scoreboard objectives remove getnumid
scoreboard objectives remove sethome
scoreboard objectives remove home

scoreboard objectives remove tpavm_parameters
scoreboard objectives remove tpavm_numid
scoreboard objectives remove tpavm_tpa_req
scoreboard objectives remove tpavm_tpah_req
scoreboard objectives remove tpavm_numid_req
scoreboard objectives remove tpavm_home_idx
scoreboard objectives remove tpavm_home_owner

tag @a remove tpavm_myself
tag @a remove tpavm_tpa_from
tag @a remove tpavm_tpa_to
tag @a remove tpavm_tpah_from
tag @a remove tpavm_tpah_to
tag @a remove tpavm_temp

kill @e[tag=tpavm_home_marker]
