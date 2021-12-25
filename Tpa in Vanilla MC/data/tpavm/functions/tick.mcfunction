function tpavm:enable
function tpavm:trigger

execute as @a unless score @s tpavm_numid matches -2147483648..2147483647 run function tpavm:numid/newnumid

scoreboard players enable @a getnumid
execute as @a[scores={tpavm_tpa_req=0}] run scoreboard players enable @s tpa
execute as @a unless score @s tpavm_tpa_req matches 0 run scoreboard players enable @s tpacancel
# execute as @a[scores={tpavm_tpa_req=0}] run scoreboard players enable @s tpa
# execute as @a[scores={tpavm_tpa_req=0}] run scoreboard players enable @s tpa

