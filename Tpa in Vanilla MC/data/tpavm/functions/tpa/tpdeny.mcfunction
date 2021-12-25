# 重置trigger记分板
scoreboard players set @s tpdeny 0

# 标记被传送者
tag @s add tpavm_myself
execute as @a if score @s tpavm_tpa_req = @a[tag=tpavm_myself,limit=1] tpavm_numid run tag @s add tpavm_tpa_from
tag @s remove tpavm_myself

# 提示信息
tellraw @s ["",{"text":"你拒绝了 ","color":"gold"},{"selector":"@a[tag=tpavm_tpa_from]","color":"yellow"},{"text":" 的传送请求","color":"gold"}]
tellraw @a[tag=tpavm_tpa_from] ["",{"selector":"@s","color":"yellow"},{"text":" 拒绝了你的传送请求","color":"gold"}]

# 取消传送请求
scoreboard players set @a[tag=tpavm_tpa_from] tpavm_tpa_req 0

# 修改trigger权限
scoreboard players enable @a[tag=tpavm_tpa_from] tpa
execute as @a[tag=tpavm_tpa_from] run trigger tpacancel set 0
trigger tpaccept set 0

# 删tag
tag @a remove tpavm_tpa_from
