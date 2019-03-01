require "pry"

arr = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi"]

def alphabetize(arr)
  special = ["ĉ", "ĝ", "ĥ", "ŝ", "ŭ"]
  list = []
  i = 0
  arr.each {|word|
    list[i] = word.chars
    i += 1
  }
  list2 = list.sort_by {|array|
    array.first
  }
  list2
  binding.pry
end

alphabetize(arr)



# [["m", "i", " ", "a", "m", "a", "s", " ", "v", "i", "n"],
# ["b", "o", "n", "a", "n", " ", "m", "a", "t", "e", "n", "o", "n"],
# ["p", "a", "c", "o", "n"]]