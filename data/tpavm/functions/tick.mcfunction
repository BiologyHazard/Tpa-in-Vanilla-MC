function tpavm:trigger

execute as @a unless score @s tpavm_numid matches -2147483648..2147483647 run function tpavm:numid/newnumid

scoreboard players enable @a getnumid
execute as @a unless score @s tpavm_tpa_req matches 1.. unless score @s tpavm_tpa_req matches ..-1 run scoreboard players enable @s tpa
execute as @a unless score @s tpavm_tpah_req matches 1.. unless score @s tpavm_tpah_req matches ..-1 run scoreboard players enable @s tpahere
execute as @a if score @s tpavm_tpa_req matches -2147483648..2147483647 unless score @s tpavm_tpa_req matches 0 run scoreboard players enable @s tpacancel
execute as @a if score @s tpavm_tpah_req matches -2147483648..2147483647 unless score @s tpavm_tpah_req matches 0 run scoreboard players enable @s tpacancel
scoreboard players enable @a sethome
scoreboard players enable @a home

execute as @e[type=minecraft:creeper, nbt=!{powered: 1b}] run data modify entity @s ExplosionRadius set value -3b
execute as @e[type=minecraft:creeper, nbt={powered: 1b}] run data modify entity @s ExplosionRadius set value 1b
