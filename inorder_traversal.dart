/**
 * Given the root of a binary tree, return the inorder traversal of its nodes' values.
Example 1:
Input: root = [1,null,2,3]
Output: [1,3,2]
 
 */
  class TreeNode {
    int val;
    TreeNode? left;
    TreeNode? right;
    TreeNode([this.val = 0, this.left, this.right]);
  }
 
class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    if (root==null){
        return [];
    }

    return inorderTraversal(root.left)+[root.val]+inorderTraversal(root.right);
  }

  void main(){
    
  }
}