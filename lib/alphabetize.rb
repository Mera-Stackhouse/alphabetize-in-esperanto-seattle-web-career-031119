require "pry"

arr = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi"]
greetings = ["ŝĝĉĥŭĵ", "ŝĝĉĥŭĉ", "ŝĝĉĥŭĥ"]

def alphabetize(arr)
  hash = {}
  i = 1
  arr.each {|element|
    hash[i] = element
    i += 1
  }
  hash2 = {}
  hash.each {|key, value|
    hash2[key] = value
    key1 = key
    value.each_char {|x|
      if x == "ĉ"
        hash2[key1] = hash2[key1].gsub(x, 'c')
      end
      if x == "ĝ"
        hash2[key1] = hash2[key1].gsub(x, 'g')
      end
      if x == "ĥ"
        hash2[key1] = hash2[key1].gsub(x, 'h')
      end
      if x == "ĵ"
        hash2[key1] = hash2[key1].gsub(x, 'j')
      end
      if x == "ŝ"
        hash2[key1] = hash2[key1].gsub(x, 's')
      end
      if x == "ŭ"
        hash2[key1] = hash2[key1].gsub(x, 'u')
      end
    }
  }
  sorted = hash2.sort_by {|key, value|
    value
  }
  
  
  
  
  
  
  
  # special = ["ĉ", "ĝ", "ĥ", "ŝ", "ŭ"]
  # list = []
  # i = 0
  # arr.each {|word|
  #   list[i] = word.chars
  #   i += 1
  # }
  # list2 = list.sort_by {|array|
  #   array.first
  # }
  # list2
  # binding.pry
end

alphabetize(greetings)



# [["m", "i", " ", "a", "m", "a", "s", " ", "v", "i", "n"],
# ["b", "o", "n", "a", "n", " ", "m", "a", "t", "e", "n", "o", "n"],
# ["p", "a", "c", "o", "n"]]