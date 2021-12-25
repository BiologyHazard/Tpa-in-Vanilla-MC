scoreboard players operation @s tpavm_tpah_req = @s tpahere

scoreboard players set @s tpahere 0

tag @s add tpavm_myself
execute as @a if score @s tpavm_numid = @a[tag=tpavm_myself,limit=1] tpavm_tpah_req run tag @s add tpavm_tpah_from

tellraw @s "请求已发送"
tellraw @a[tag=tpavm_tpah_from] "新的传送请求"

scoreboard players enable @a[tag=tpavm_tpah_from] tpaccept
scoreboard players enable @a[tag=tpavm_tpah_from] tpdeny
scoreboard players enable @s tpacancel

tag @s remove tpavm_myself