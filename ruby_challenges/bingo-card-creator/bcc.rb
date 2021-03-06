#https://learn.skillcrush.com/module-19/setting-up-your-bingo-card/
require "prawn"

def align(num)
  if num < 10
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

#didn't add #{align...} for ingo because they would all be double digits. If that wasn't true or not knowable, would need to add to each.
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

#Prawn::Document.generate("bingo.pdf") do
#  text bingo_card
#end  prints to terminal and creates pdf - but not pretty

#Prawn::Document.generate("bingo.pdf") do
#  define_grid(columns: 5, rows: 6)
#  grid.show_all
#end   pdf is a grid of 5 columns and 6 rows with index numbers in the upper left corner

#Prawn::Document.generate("bingo.pdf") do
#  define_grid(columns: 5, rows: 6)

#  grid(0, 0).bounding_box do
#    stroke_bounds
#  end
#end  creates one box with a defined border

Prawn::Document.generate("bingo.pdf") do
  define_grid(columns: 5, rows: 6)

  grid(0, 0).bounding_box do
    stroke_bounds
    text "B", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 1).bounding_box do
    stroke_bounds
    text "I", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 2).bounding_box do
    stroke_bounds
    text "N", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 3).bounding_box do
    stroke_bounds
    text "G", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 4).bounding_box do
    stroke_bounds
    text "O", align: :center, valign: :center, size: 50, style: :bold
  end
end #creates a grid with "BINGO" at the top
