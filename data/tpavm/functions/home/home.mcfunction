# 传送
tag @s add tpavm_myself
execute as @e[tag=tpavm_home_marker] if score @s tpavm_home_owner = @a[tag=tpavm_myself,limit=1] tpavm_numid if score @s tpavm_home_idx = @a[tag=tpavm_myself,limit=1] home run teleport @a[tag=tpavm_myself] @s
tag @s remove tpavm_myself

# 提示信息
tellraw @s ["",{"text":"\u5df2\u4f20\u9001\u81f3 home (","color":"gold"},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":")","color":"gold"}]

# 重置trigger记分板
scoreboard players set @s home 0
