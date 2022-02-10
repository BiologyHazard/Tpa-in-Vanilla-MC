# 重置trigger记分板
scoreboard players set @s tpaccept 0

# 标记被传送者
tag @s add tpavm_myself
execute as @a if score @s tpavm_tpa_req = @a[tag=tpavm_myself,limit=1] tpavm_numid run tag @s add tpavm_tpa_from
execute as @a if score @s tpavm_tpah_req = @a[tag=tpavm_myself,limit=1] tpavm_numid run tag @s add tpavm_tpah_to
tag @s remove tpavm_myself

# 传送
teleport @a[tag=tpavm_tpa_from] @s
teleport @s @a[tag=tpavm_tpah_to,sort=arbitrary,limit=1]

# 提示信息
execute if entity @a[tag=tpavm_tpa_from] run tellraw @s ["",{"selector":"@a[tag=tpavm_tpa_from]","color":"yellow"},{"text":" 已传送至你","color":"gold"}]
execute if entity @a[tag=tpavm_tpa_from] run tellraw @a[tag=tpavm_tpa_from] ["",{"selector":"@s","color":"yellow"},{"text":" 同意了你的传送请求","color":"gold"}]
execute if entity @a[tag=tpavm_tpah_to] run tellraw @s ["",{"text":"已传送至 ","color":"gold"},{"selector":"@a[tag=tpavm_tpah_to]","color":"yellow"}]
execute if entity @a[tag=tpavm_tpah_to] run tellraw @a[tag=tpavm_tpah_to] ["",{"selector":"@s","color":"yellow"},{"text":" 同意了你的传送请求","color":"gold"}]

# 取消传送请求
scoreboard players set @a[tag=tpavm_tpa_from] tpavm_tpa_req 0
scoreboard players set @a[tag=tpavm_tpah_to] tpavm_tpah_req 0

# 修改trigger权限
# scoreboard players enable @a[tag=tpavm_tpa_from] tpa
execute as @a[tag=tpavm_tpa_from] run trigger tpacancel set 0
execute as @a[tag=tpavm_tpah_to] run trigger tpacancel set 0
trigger tpdeny set 0

# 删tag
tag @a remove tpavm_tpa_from
tag @a remove tpavm_tpah_to
