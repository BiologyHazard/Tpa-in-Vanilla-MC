# 删除原有的marker
tag @s add tpavm_myself
execute as @e[tag=tpavm_home_marker] if score @s tpavm_home_owner = @a[tag=tpavm_myself,limit=1] tpavm_numid if score @s tpavm_home_idx = @a[tag=tpavm_myself,limit=1] sethome run kill @s
tag @s remove tpavm_myself

# 添加marker
execute at @s run summon minecraft:marker ~ ~ ~ {Tags: ["tpavm_temp", "tpavm_home_marker"]}
scoreboard players operation @e[tag=tpavm_temp] tpavm_home_owner = @s tpavm_numid
scoreboard players operation @e[tag=tpavm_temp] tpavm_home_idx = @s sethome
teleport @e[tag=tpavm_temp] @s
tag @e[tag=tpavm_temp] remove tpavm_temp

# 提示信息
tellraw @s ["",{"text":"\u5df2\u8bbe\u7f6e home (","color":"gold"},{"score":{"name":"@s","objective":"sethome"},"color":"gold"},{"text":")\n\u8f93\u5165 ","color":"gold"},{"text":"/trigger home set ","color":"red"},{"score":{"name":"@s","objective":"sethome"},"color":"red"},{"text":" \u4f20\u9001\u81f3\u8fd9\u91cc","color":"gold"}]

# 重置trigger记分板
scoreboard players set @s sethome 0
