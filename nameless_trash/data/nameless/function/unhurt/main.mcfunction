scoreboard players add @a unhurt_time 1
execute as @a[nbt={HurtTime:9s}] run scoreboard players set @s unhurt_time 0
execute as @a[nbt={HurtTime:9s}] run effect clear @s regeneration
execute as @a[nbt={HurtTime:9s}] run effect clear @s strength
execute as @a[scores={unhurt_time=200..}] run effect give @s regeneration infinite 0 true
execute as @a[scores={unhurt_time=200}] run title @s title "你無傷了一段時間"
execute as @a[scores={unhurt_time=200}] run title @s subtitle "傷口開始癒合了!"
execute as @a[scores={unhurt_time=1200..}] run effect give @s strength infinite 2 true
execute as @a[scores={unhurt_time=1200}] run title @s title "你無傷了一段時間"
execute as @a[scores={unhurt_time=1200}] run title @s subtitle "力量湧現出來了!"