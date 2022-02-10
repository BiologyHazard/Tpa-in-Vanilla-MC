# 重置trigger记分板
scoreboard players set @s tpacancel 0

# 加tag
tag @s add tpavm_myself
execute as @a if score @s tpavm_numid = @a[tag=tpavm_myself,limit=1] tpavm_tpa_req run tag @s add tpavm_tpa_to
execute as @a if score @s tpavm_numid = @a[tag=tpavm_myself,limit=1] tpavm_tpah_req run tag @s add tpavm_tpah_from
tag @s remove tpavm_myself

# 提示信息
execute if entity @a[tag=tpavm_tpa_to] run tellraw @a[tag=tpavm_tpa_to] ["",{"selector":"@s","color":"yellow"},{"text":" \u5df2\u53d6\u6d88\u4f20\u9001\u81f3\u4f60","color":"gold"}]
execute if entity @a[tag=tpavm_tpa_to] run tellraw @s ["",{"text":"\u5df2\u53d6\u6d88\u4f20\u9001\u81f3 ","color":"gold"},{"selector":"@a[tag=tpavm_tpa_to]","color":"yellow"}]

execute if entity @a[tag=tpavm_tpah_from] run tellraw @a[tag=tpavm_tpah_from] ["",{"selector":"@s","color":"yellow"},{"text":" 已取消你传送至ta的请求","color":"gold"}]
execute if entity @a[tag=tpavm_tpah_from] run tellraw @s ["",{"text":"已取消 ","color":"gold"},{"selector":"@a[tag=tpavm_tpah_from]","color":"yellow"},{"text":" 传送至你的请求","color":"gold"}]

# 取消传送请求
scoreboard players set @s tpavm_tpa_req 0
scoreboard players set @s tpavm_tpah_req 0

# 修改trigger权限
# scoreboard players enable @s tpa
# scoreboard players enable @s tpahere
execute as @a[tag=tpavm_tpa_to] run trigger tpaccept set 0
execute as @a[tag=tpavm_tpa_to] run trigger tpdeny set 0
execute as @a[tag=tpavm_tpah_from] run trigger tpaccept set 0
execute as @a[tag=tpavm_tpah_from] run trigger tpdeny set 0

# 删tag
tag @a remove tpavm_tpa_to
