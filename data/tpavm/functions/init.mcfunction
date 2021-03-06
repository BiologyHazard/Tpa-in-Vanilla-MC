function tpavm:info

scoreboard objectives add tpa trigger [{"text":"tpa","color":"aqua"}]
scoreboard objectives add tpahere trigger [{"text":"tpahere","color":"aqua"}]
scoreboard objectives add tpacancel trigger [{"text":"tpacancel","color":"aqua"}]
scoreboard objectives add tpaccept trigger [{"text":"tpaccept","color":"aqua"}]
scoreboard objectives add tpdeny trigger [{"text":"tpdeny","color":"aqua"}]
scoreboard objectives add sethome trigger [{"text":"sethome","color":"aqua"}]
scoreboard objectives add home trigger [{"text":"home","color":"aqua"}]
scoreboard objectives add getnumid trigger [{"text":"getnumid","color":"aqua"}]

scoreboard objectives add tpavm_parameters dummy [{"text":"tpavm参数","color":"aqua"}]
scoreboard objectives add tpavm_numid dummy [{"text":"数字ID","color":"aqua"}]
scoreboard objectives add tpavm_numid_req dummy [{"text":"数字ID查询标记","color":"aqua"}]
scoreboard objectives add tpavm_tpa_req dummy [{"text":"传送请求","color":"aqua"}]
scoreboard objectives add tpavm_tpah_req dummy [{"text":"传送至请求","color":"aqua"}]
scoreboard objectives add tpavm_home_owner dummy [{"text":"家的所有者","color":"aqua"}]
scoreboard objectives add tpavm_home_idx dummy [{"text":"家的编号","color":"aqua"}]

execute unless score #max_home_count tpavm_parameters matches -2147483648..2147483647 run scoreboard players set #max_home_count tpavm_parameters 5

# scoreboard players enable @a getnumid
# scoreboard players enable @a tpa
# scoreboard players enable @a tpahere
