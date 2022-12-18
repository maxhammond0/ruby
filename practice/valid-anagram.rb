# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s = counter(s.split(''))
  t = counter(t.split(''))

  s == t
end

def counter(arr)
  hash = Hash.new(0)
  arr.each { |key| hash[key] += 1 }
  hash
end

s = 'rat'
t = 'car'

puts is_anagram(s, t)
