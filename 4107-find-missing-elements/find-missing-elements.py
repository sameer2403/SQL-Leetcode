class Solution:
    def findMissingElements(self, nums: List[int]) -> List[int]:
        num = set(nums)
        min_val= min(nums)
        max_val = max(nums)

        missing_val=[]

        for curr in range(min_val,max_val+1):
            if curr not in num:
                missing_val.append(curr)

        return missing_val




        