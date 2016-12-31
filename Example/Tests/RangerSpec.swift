// https://github.com/Quick/Quick

import Quick
import Nimble
import Ranger

class RangerSpec: QuickSpec {
    
    override func spec() {
        describe("Reverse half open range operator") {
            var counts: [Int]!
            var control: [Int]!
            
            beforeEach {
                counts = [Int]()
                control = [Int]()
                for i in 5..>1 {
                    counts.append(i)
                }
                
                for i in 2...5 {
                    control.append(i)
                }
                control.reverse()
            }
            
            it("has the expected value") {
                expect(control).to(equal(counts))
            }
            
        }
        
        describe("Reverse closed range operator") {
            var counts: [Int]!
            var control: [Int]!
            
            beforeEach {
                counts = [Int]()
                control = [Int]()
                for i in 5>>>1 {
                    counts.append(i)
                }
                
                for i in 1...5 {
                    control.append(i)
                }
                control.reverse()
            }
            
            it("has the expected value") {
                expect(control).to(equal(counts))
            }
        }
        

    }
    
}
