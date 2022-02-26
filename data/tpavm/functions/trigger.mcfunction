execute as @a if score @s getnumid matches -2147483648..2147483647 unless score @s getnumid matches 0 run function tpavm:numid/getnumid
execute as @a if score @s tpa matches -2147483648..2147483647 unless score @s tpa matches 0 run function tpavm:tpa/tpa
execute as @a if score @s tpahere matches -2147483648..2147483647 unless score @s tpahere matches 0 run function tpavm:tpa/tpahere
execute as @a if score @s tpacancel matches -2147483648..2147483647 unless score @s tpacancel matches 0 run function tpavm:tpa/tpacancel
execute as @a if score @s tpaccept matches -2147483648..2147483647 unless score @s tpaccept matches 0 run function tpavm:tpa/tpaccept
execute as @a if score @s tpdeny matches -2147483648..2147483647 unless score @s tpdeny matches 0 run function tpavm:tpa/tpdeny
execute as @a if score @s sethome matches -2147483648..2147483647 if score @s sethome matches 1.. if score @s sethome <= #max_home_count tpavm_parameters run function tpavm:home/sethome
execute as @a if score @s sethome matches -2147483648..2147483647 unless score @s sethome matches 0 if score @s sethome > #max_home_count sethome run function tpavm:home/sethome_invalid
execute as @a if score @s home matches -2147483648..2147483647 unless score @s home matches 0 run function tpavm:home/home
