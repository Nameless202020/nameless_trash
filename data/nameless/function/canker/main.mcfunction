effect give @s wither 5 0 false
scoreboard players remove @s max_health 1
execute if score is_canker_mode_on boolean matches 1 as @a run schedule function nameless:canker/main 600s
