execute as @e[predicate=otherworld:altar,type=item,nbt={OnGround:1b,Item:{id:"minecraft:diamond",Count:1b}}] run function otherworld:altar
execute as @e[scores={omfgsfd=1..}] run function otherworld:altardeath


###RECIPES

###RECIPE 1

tag @e[nbt={OnGround:1b,Item:{id:"minecraft:gold_ingot",Count:3b}}] add craft1
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] add craft2

execute at @e[tag=craft1] as @e[tag=craft2,distance=..1] run summon item ~ ~ ~ {Tags:["itemkill1"],PickupDelay:20,Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"test\"}"},HideFlags:1}}}

execute at @e[tag=craft1] as @e[tag=craft2,distance=..1] run function otherworld:altareffect


execute at @e[tag=itemkill1] run kill @e[tag=craft1,distance=..1]
execute at @e[tag=itemkill1] run kill @e[tag=craft2,distance=..1]
execute at @e[tag=itemkill1] run kill @e[tag=craft3,distance=..1]
execute at @e[tag=itemkill1] run kill @e[tag=craft4,distance=..1]
execute at @e[tag=itemkill1] run kill @e[tag=craft5,distance=..1]

tag @e[type=item] remove craft1
tag @e[type=item] remove craft2
tag @e[type=item] remove craft3
tag @e[type=item] remove craft4
tag @e[type=item] remove craft5
tag @e[type=item] remove itemkill1