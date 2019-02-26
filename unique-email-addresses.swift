class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
    
    var fltrdEmails = [Character]()
    var plusFlag:Bool = false
    var atFlag:Bool = false
        
    var reassmbldEmails = [String]()
    var stringEmails:String = ""
        
    for i in 0..<emails.count {
      
    fltrdEmails = []
    plusFlag = false
    atFlag = false
    stringEmails = ""
        
        for char in emails[i]{
            
            if char == "+"{
                plusFlag = true
            }
            if char != "." && !plusFlag {
                fltrdEmails.append(char)   
            }
            if char == "." && atFlag {
                fltrdEmails.append(char)
            }
            if char == "@"{
                fltrdEmails.append(char)
                if plusFlag {
                    plusFlag = false   
                }
                atFlag = true
            }
            
        }
        
        for i in 0..<fltrdEmails.count {
            stringEmails.append(fltrdEmails[i])
        }
        
        reassmbldEmails.append(stringEmails)
        
      }
        
        return(Set(reassmbldEmails).count)
    
        }
}
