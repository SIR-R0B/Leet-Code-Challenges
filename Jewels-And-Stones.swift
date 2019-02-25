class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {

        var jewels:Int = 0
        
        for character in J.characters{
            for index in S.indices{
                if character == S[index] {
                    jewels += 1   
                }
            }
           
        }
       return jewels 
    }
}
