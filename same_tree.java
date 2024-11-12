/**
 * Given the root of a binary tree, return the inorder traversal of its nodes' values.
 * 
 * 
 * 
 * 
 * 
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public boolean isSameTree(TreeNode p, TreeNode q) {
        if (p == null && q == null) 
            return true;
        if (p == null || q == null) 
            return false;
        return (p.val == q.val) && isSameTree(p.right, q.right) &&  isSameTree(p.left, q.left);
    }

    public static void main(){
        //your input here...
    }
}

