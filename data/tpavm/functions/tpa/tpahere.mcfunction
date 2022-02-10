scoreboard players operation @s tpavm_tpah_req = @s tpahere

scoreboard players set @s tpahere 0

tag @s add tpavm_myself
execute as @a if score @s tpavm_numid = @a[tag=tpavm_myself,limit=1] tpavm_tpah_req run tag @s add tpavm_tpah_from
tag @s remove tpavm_myself

# 提示信息
tellraw @s ["",{"text":"\u4f20\u9001\u8bf7\u6c42\u5df2\u53d1\u9001\u7ed9 ","color":"gold"},{"selector":"@a[tag=tpavm_tpah_from]","color":"yellow"},{"text":"\n"},{"text":"\u70b9\u51fb\u8fd9\u91cc","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpacancel"}},{"text":" \u6216\u8f93\u5165","color":"gold"},{"text":" /trigger tpacancel","color":"red"},{"text":" \u4ee5\u53d6\u6d88\u4f20\u9001\u8bf7\u6c42","color":"gold"}]
tellraw @a[tag=tpavm_tpah_from] ["",{"selector":"@s","color":"yellow"},{"text":" 请求你传送至ta","color":"gold"},{"text":"\n"},{"text":"\u70b9\u51fb\u8fd9\u91cc","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpaccept"}},{"text":" \u6216\u8f93\u5165","color":"gold"},{"text":" /trigger tpaccept ","color":"red"},{"text":"\u4ee5\u540c\u610f\u4f20\u9001\u8bf7\u6c42","color":"gold"},{"text":"\n"},{"text":"\u70b9\u51fb\u8fd9\u91cc","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpdeny"}},{"text":" \u6216\u8f93\u5165","color":"gold"},{"text":" /trigger tpdeny ","color":"red"},{"text":"\u4ee5\u62d2\u7edd\u4f20\u9001\u8bf7\u6c42","color":"gold"}]

scoreboard players enable @a[tag=tpavm_tpah_from] tpaccept
scoreboard players enable @a[tag=tpavm_tpah_from] tpdeny
scoreboard players enable @s tpacancel

tag @a remove tpavm_tpah_from
