#I think there is a way to do length, for instance if this was a string, so keep in mind for a future project...
def align(num)
if num.length < 2 #this doesn't work because .length doesn't work for integers but I think it has other possibilities.
  "  #{num}"
else
  " #{num}"
end
end

b_col = (1..15).to_a.sample(5)
i_col = (16..30).to_a.sample(5)
n_col = (31..45).to_a.sample(4)
g_col = (46..60).to_a.sample(5)
o_col = (61..75).to_a.sample(5)


bingo_card = <<-BINGO
+-----+-----+-----+-----+-----+
|  B  |  I  |  N  |  G  |  O  |
+-----+-----+-----+-----+-----+
| #{align(b_col[0])} |  #{i_col[0]} |  #{n_col[0]} |  #{g_col[0]} |  #{o_col[0]} |
+-----+-----+-----+-----+-----+
| #{align(b_col[1])} |  #{i_col[1]} |  #{n_col[1]} |  #{g_col[1]} |  #{o_col[1]} |
+-----+-----+-----+-----+-----+
| #{align(b_col[2])} |  #{i_col[2]} |  F  |  #{g_col[2]} |  #{o_col[2]} |
+-----+-----+-----+-----+-----+
| #{align(b_col[3])} |  #{i_col[3]} |  #{n_col[2]} |  #{g_col[3]} |  #{o_col[3]} |
+-----+-----+-----+-----+-----+
| #{align(b_col[4])} |  #{i_col[4]} |  #{n_col[3]} |  #{g_col[4]} |  #{o_col[4]} |
+-----+-----+-----+-----+-----+
BINGO

puts bingo_card

puts b_col.inspect
puts i_col.inspect
puts n_col.inspect
puts g_col.inspect
puts o_col.inspect
