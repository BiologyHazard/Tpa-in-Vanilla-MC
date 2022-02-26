# Tpa in Vanilla MC

在原版MC中实现tpa的部分功能！  
Added tpa in Vanilla MC!

需要Minecraft版本1.17+  
Require Minecraft version 1.17+

***

## 支持的命令 Supported Commands

*（以下命令所有玩家都可以使用，不需要管理员权限）*  
*(the following commands can be used by all players without administration)*

1. `/trigger getnumid` 查询在线玩家的数字ID（包括自己）
1. `/trigger tpa set <目标玩家的数字ID>`
1. `/trigger tpacancel`
1. `/trigger <tpaccept|tpdeny>`
1. `/trigger tpahere set <目标玩家的数字ID>`
1. `/trigger sethome set <家的编号>`
1. `/trigger home set <家的编号>`
***
1. `/trigger getnumid` query the numID of online players (including yourself)
1. `/trigger tpa set <target_player's_numID>`
1. `/trigger tpacancel`
1. `/trigger <tpaccept|tpdeny>`
1. `/trigger tpahere set <target_player's_numID>`
1. `/trigger sethome set <home_number>`
1. `/trigger home set <home_number>`

*（以下命令仅限管理员使用）*  
*(the following commands are for administrators only)*

1. `/scoreboard players set #max_home_count tpavm_parameters <家的数量上限>`
***
1. `/scoreboard players set #max_home_count tpavm_parameters <max_home_count>`

家的数量上限默认为5，修改家的上限不会删除已经创建的家（即使编号超过了新的上限）  
max_home_count is 5 by default. Modifying max_home_count will not remove the existing homes (even if the number exceeds the new value)

<玩家的数字ID>和<家的编号>从1开始编号。  
<player's_numID> and <home_number> starts from 1.

所有操作均限于在线玩家，请不要对离线玩家以及不存在的数字ID进行操作，否则可能导致工具失效，如发现Bug及时反馈。  
All operations are limited to online players. Please do not operate on offline players or nonexistent numIDs, which may cause errors. If a bug is found, give feedback in time. Report bugs if found.

## 联系方式 Contact Me
- QQ: [3482991796](http://wpa.qq.com/msgrd?uin=3482991796)
- QQ Group: [586134350](https://qm.qq.com/cgi-bin/qm/qr?k=CffgNW5RIRHS-z8twm7L8jYYd_4s8uWx)
- bilibili: BioHazard [https://space.bilibili.com/37179776](https://space.bilibili.com/37179776)
