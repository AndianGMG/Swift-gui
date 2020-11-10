import UIKit

struct Queue<T> {
    var items: [T] = []
    mutating func getHead() -> T? {
        guard items.count > 0 else {return nil}
        return items.removeFirst()
    }
    mutating func addToQueue(_ element: T) {
        self.items.append(element)
    }
    
    func filter(predicate: (T) -> Bool) -> [T] {
        return items.filter(predicate)
    }
    subscript(index: Int) -> T? {
        guard index < items.count && index >= 0 else {return nil}
        print(items.count, items)
        return items[index]
    }
}
    
struct SometStruck {
    var someValue: Int
}

let ss1 = SometStruck(someValue: 1)
let ss2 = SometStruck(someValue: 2)
let ss3 = SometStruck(someValue: 3)
let ss4 = SometStruck(someValue: 4)
let array = [ss1, ss2, ss3, ss4]

var queue = Queue<SometStruck>()
array.forEach {
    queue.addToQueue($0)
}
queue[2]
