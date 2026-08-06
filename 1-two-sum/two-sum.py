class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
       seen ={}
       for i, num in enumerate(nums):
        complement = target-num
         # check if the complement is already seen in dictionary
        if complement in seen:
            return[seen[complement], i]
        seen[num]=i

       return []        
        