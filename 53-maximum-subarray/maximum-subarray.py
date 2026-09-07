class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        maxi= float('-inf')
        curSum=0

        for i in range(len(nums)):
            curSum +=nums[i]

            if curSum>maxi:
                maxi=curSum

            if curSum<0:
                curSum=0
        return maxi            