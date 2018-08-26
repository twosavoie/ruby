#the variable formatter is:
formatter = "%{first} %{second} %{third} %{fourth}"

#These three return the value of the hash I think
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
#keeps repeating the values of the formatter variable.
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

#prints this as a paragraph
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
