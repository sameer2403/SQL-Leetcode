# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        resList=ListNode()
        dummy=resList
        carry =0
        
        while (l1 is not None or l2 is not None) or carry:
            sum=0;
            if l1 is not None:
                sum += l1.val
                l1=l1.next

            if l2 is not None:
                sum +=l2.val    
                l2=l2.next

            sum+= carry
            carry=sum//10
            node=ListNode(sum%10)
            dummy.next= node
            dummy=dummy.next
          
        return  resList.next     
