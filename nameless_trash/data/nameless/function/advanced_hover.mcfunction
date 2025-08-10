# 進階滯空系統

# 檢查玩家是否在空中且潛行
execute as @a at @s if block ~ ~-0.5 ~ air if entity @s[predicate=nameless:is_sneaking] run function nameless:hover_activate

# 滯空啟動函數
function nameless:hover_activate

# 給予滯空效果
effect give @s levitation 1 0 true
effect give @s slow_falling 1 0 true

# 設定 Motion 為 0
data modify entity @s Motion[1] set value 0.0

# 視覺效果
particle cloud ~ ~-0.5 ~ 0.3 0.3 0.3 0.1 5
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.02 10

# 音效
playsound minecraft:block_glass_break player @s ~ ~ ~ 0.5 1.0

