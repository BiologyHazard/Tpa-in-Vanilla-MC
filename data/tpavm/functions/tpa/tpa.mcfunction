# 先记录目标
scoreboard players operation @s tpavm_tpa_req = @s tpa

# 再重置trigger记分板
scoreboard players set @s tpa 0

# 给目标加tag
tag @s add tpavm_myself
execute as @a if score @s tpavm_numid = @a[tag=tpavm_myself, limit=1] tpavm_tpa_req run tag @s add tpavm_tpa_to
tag @s remove tpavm_myself

# 提示信息
tellraw @s ["",{"text":"\u4f20\u9001\u8bf7\u6c42\u5df2\u53d1\u9001\u7ed9 ","color":"gold"},{"selector":"@a[tag=tpavm_tpa_to]","color":"yellow"},{"text":"\n"},{"text":"\u70b9\u51fb\u8fd9\u91cc","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpacancel"}},{"text":" \u6216\u8f93\u5165","color":"gold"},{"text":" /trigger tpacancel","color":"red"},{"text":" \u4ee5\u53d6\u6d88\u4f20\u9001\u8bf7\u6c42","color":"gold"}]
tellraw @a[tag=tpavm_tpa_to] ["",{"selector":"@s","color":"yellow"},{"text":" \u8bf7\u6c42\u4f20\u9001\u81f3\u4f60","color":"gold"},{"text":"\n"},{"text":"\u70b9\u51fb\u8fd9\u91cc","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpaccept"}},{"text":" \u6216\u8f93\u5165","color":"gold"},{"text":" /trigger tpaccept ","color":"red"},{"text":"\u4ee5\u540c\u610f\u4f20\u9001\u8bf7\u6c42","color":"gold"},{"text":"\n"},{"text":"\u70b9\u51fb\u8fd9\u91cc","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpdeny"}},{"text":" \u6216\u8f93\u5165","color":"gold"},{"text":" /trigger tpdeny ","color":"red"},{"text":"\u4ee5\u62d2\u7edd\u4f20\u9001\u8bf7\u6c42","color":"gold"}]

# 允许目标同意或拒绝
scoreboard players enable @a[tag=tpavm_tpa_to] tpaccept
scoreboard players enable @a[tag=tpavm_tpa_to] tpdeny
scoreboard players enable @s tpacancel

tag @a remove tpavm_tpa_to
