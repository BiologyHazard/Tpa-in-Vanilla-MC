# 当前查询的分数+1
scoreboard players add @s tpavm_numid_req 1
# 加标签
execute as @a if score @s tpavm_numid = @a[tag=tpavm_myself, limit=1] tpavm_numid_req run tag @s add tpavm_numid_totellraw
# 输出
execute if entity @a[tag=tpavm_numid_totellraw] run tellraw @s ["",{"selector":"@a[tag=tpavm_numid_totellraw]","color":"red"}," ",{"score":{"objective":"tpavm_numid","name":"@a[tag=tpavm_numid_totellraw,limit=1]"},"color":"white"}]
# 删标签
tag @a remove tpavm_numid_totellraw
# 递归
execute if score @s tpavm_numid_req < #tpavm_maxnumid tpavm_numid run function tpavm:numid/recur
