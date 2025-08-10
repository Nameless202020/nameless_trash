execute as @a at @s if block ~ ~-0.5 ~ air if entity @s[predicate=nameless:is_sneaking,scores={sneaking_time=..60}] run scoreboard players add @s sneaking_time 1
# 滯空效果（當潛行時）
execute as @a at @s if entity @s[predicate=nameless:is_sneaking,scores={sneaking_time=..60}] run summon marker ~ ~ ~ {"Tags":["double_jump"]}
execute as @a at @e[tag=double_jump,sort=nearest] if entity @s[predicate=nameless:is_sneaking,scores={sneaking_time=..60}] run tp @s @s

# 跳躍效果（當停止潛行時）
execute as @a at @s if entity @s[predicate=!nameless:is_sneaking,scores={sneaking_time=1..60}] run effect give @s levitation 1 2 true

# 視覺效果
execute as @a at @s if entity @s[scores={sneaking_time=1..60}] run particle cloud ~ ~-0.5 ~ 0.4 0.4 0.4 0.1 3
execute as @a at @s if entity @s[scores={sneaking_time=1..60}] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 5

# 重置計時器
execute as @a at @s if entity @s[predicate=!nameless:is_sneaking] run scoreboard players set @s sneaking_time 0
