effect give @a wither 5 0 false
scoreboard players remove @a max_health 1
execute if score is_canker_mode_on boolean matches 1 run schedule function nameless:canker/main 600s
