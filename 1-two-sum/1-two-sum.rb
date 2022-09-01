# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  hash = {}
  (0..nums.length-1).each do |i|
    hash.store(nums[i], i) #ハッシュを初期化
  end
  (0..nums.length-1).each do |i|
    complement = target - nums[i] #補数を用意
    return [i, hash.fetch(complement)] if hash.has_key?(complement) && hash.fetch(complement) != i #補数チェック
  end
end