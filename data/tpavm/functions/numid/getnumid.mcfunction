# 重置trigger记分板
scoreboard players set @s getnumid 0

# 输出
tellraw @s ["",{"text":"您的数字ID是 ","color":"gold"},{"score":{"objective":"tpavm_numid","name":"@s"},"color":"yellow"}]

# 递归调用
tag @s add tpavm_myself
function tpavm:numid/recur
tag @s remove tpavm_myself
scoreboard players reset @s tpavm_numid_req
