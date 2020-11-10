import Foundation


enum MathErrors: Error {
    case haveNoDiscriminant
}

class Equsaion {
    
    let a: Double
    let b: Double
    let c: Double
    
    init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
}

    private func calculateDiscriminant() throws -> Double {
        let discriminant = pow(b, 2) - 4 *  a * c
        guard discriminant >= 0 else {
            throw MathErrors.haveNoDiscriminant
        }
    return discriminant
    }
    
    func calculateRoots() throws -> [Double] {
        var roots = [Double]()
        
        do {
            let discriminant = try calculateDiscriminant()
            let root_1 = ((-b) + sqrt(discriminant)) / 2 * a
            let root_2 = ((-b) - sqrt(discriminant)) / 2 * a
            
            if root_1 != root_2 {
                roots.append(root_1)
                roots.append(root_2)
            } else {
                roots.append(root_1)
            }
        } catch {
                throw error
            }
            return roots
        }
        
    }

    let eq_1 = Equsaion(a: 1, b: 2, c: 3)
    do {
    let roots = try eq_1.calculateRoots()
    print(roots)
    } catch {
    print(error)
    }
    

