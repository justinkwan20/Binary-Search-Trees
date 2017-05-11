import Foundation


class binarySearchTree{
    let head: BinaryNode
    var orderedBi: String = ""
    var number = 1
    init(head: BinaryNode){
        self.head = head
    }
    
    func addNode(_ node: BinaryNode){
        number += 1
        helperaddNode(node, node2:head)
    }
    
    func helperaddNode(_ node: BinaryNode, node2: BinaryNode){
        if(node.data <= node2.data){
            if(node2.left == nil){
                node2.left = node
            } else {
                helperaddNode(node, node2: node2.left!)
            }
        }
        else if(node.data > node2.data){
            if(node2.right == nil){
                node2.right = node
            }else{
                helperaddNode(node, node2: node2.right!)
            }
        }
    }
    
    
    func preOrder()->String{
        orderedBi = ""
        helperPreOrder(head)
        return orderedBi
    }
    
    func helperPreOrder(_ root: BinaryNode){
        
        orderedBi += root.data + " "
        
        if(root.left != nil){
            helperPreOrder(root.left!)
        }
        
        if(root.right != nil){
            helperPreOrder(root.right!)
        }
        
    }
    
    func postOrder()->String{
        orderedBi = ""
        helperPostOrder(head)
        return orderedBi
    }
    func helperPostOrder(_ root: BinaryNode){
        if(root.left != nil){
            helperPostOrder(root.left!)
        }
        if(root.right != nil){
            helperPostOrder(root.right!)
        }
        orderedBi += root.data + " "
    }
    func inOrder()-> String{
        orderedBi = ""
        inOrderH(head)
        return orderedBi
    }
    
    func inOrderH(_ root: BinaryNode){
        if (root.left != nil){
            inOrderH(root.left!)
        }
        orderedBi += root.data + " "
        if(root.right != nil){
            inOrderH(root.right!)
        }
    }
    
    func numberNodes()-> Int{
        return number
    }
    func testStuff() {
        print(head.data)
        print(head.left!.data)
        print(head.right!.data)
        print(head.right!.right!.data)
        print(head.right!.right!.right!.data)
        print(head.right!.left!.data)
        print(head.right!.left!.left!.data)
        print(head.left!.right!.data)
        print(head.left!.right!.right!.data)
        print(head.left!.left!.data)
        print(head.left!.left!.right!.data)
        print(head.left!.left!.left!.data)
    }
}


class BinaryNode{
    let data: String
    var left: BinaryNode?
    var right: BinaryNode?
    
    init(data: String){
        self.data = data
    }
}




func binaryTreeTest(){
    let bt = binarySearchTree(head: BinaryNode(data: "MMM"))
    bt.addNode(BinaryNode(data: "HHH"))
    bt.addNode(BinaryNode(data: "RRR"))
    bt.addNode(BinaryNode(data: "SSS"))
    bt.addNode(BinaryNode(data: "ZZZ"))
    bt.addNode(BinaryNode(data: "QQQ"))
    bt.addNode(BinaryNode(data: "OOO"))
    bt.addNode(BinaryNode(data: "LLL"))
    bt.addNode(BinaryNode(data: "KKK"))
    bt.addNode(BinaryNode(data: "LLL"))
    bt.addNode(BinaryNode(data: "FFF"))
    bt.addNode(BinaryNode(data: "GGG"))
    bt.addNode(BinaryNode(data: "BBB"))
    print(bt.inOrder())
    print(bt.preOrder())
    print(bt.postOrder())
    print(bt.numberNodes())
}
binaryTreeTest()








