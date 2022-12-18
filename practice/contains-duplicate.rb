# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.length != nums.uniq.length
end

nums = [1, 2, 3, 4]
puts contains_duplicate(nums)
