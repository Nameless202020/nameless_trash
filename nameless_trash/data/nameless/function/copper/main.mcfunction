execute as @a[predicate=!nameless:is_sneaking] run scoreboard players set @s using_time 0
execute as @a[nbt=!{SelectedItem:{id:"minecraft:copper_ingot"}}] run scoreboard players set @s using_time 0
execute as @a[predicate=nameless:is_sneaking,nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] run scoreboard players add @s using_time 1
execute as @a[scores={using_time=1..20}] run title @s actionbar "使用中."
execute as @a[scores={using_time=21..40}] run title @s actionbar "使用中.."
execute as @a[scores={using_time=41..60}] run title @s actionbar "使用中..."
execute as @a[scores={using_time=60}] run clear @s copper_ingot 1
execute as @a[scores={using_time=60}] run effect give @s instant_health 1 1 true
execute as @a[scores={using_time=60}] run effect give @s saturation 3 0 true
execute as @a[scores={using_time=60}] at @s run particle heart ~ ~1 ~ 0.4 0.4 0.4 0.1 5
execute as @a[scores={using_time=60}] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0
execute as @a[scores={using_time=60}] run scoreboard players set @s using_time 0