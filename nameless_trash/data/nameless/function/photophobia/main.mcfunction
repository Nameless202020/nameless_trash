# 畏光症系統 - 在明亮處受到傷害

# 偵測玩家是否在明亮處並給予火焰傷害
execute as @a at @s if predicate nameless:is_light run damage @s 1 on_fire

# 給予視覺效果
execute as @a at @s if predicate nameless:is_light run effect give @s weakness 1 0 true
execute as @a at @s if predicate nameless:is_light run effect give @s nausea 1 0 true

# 顯示警告
execute as @a at @s if predicate nameless:is_light run title @s title {"text":"太亮了！","color":"red"} 