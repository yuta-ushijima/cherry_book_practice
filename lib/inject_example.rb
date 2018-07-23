char = %w[Mario Luige Peach Kuppa Yossi]

answer = char.inject("Mushroom Kingdom inhabitants are "){|answer, char| "#{answer} #{char}" }

p answer
