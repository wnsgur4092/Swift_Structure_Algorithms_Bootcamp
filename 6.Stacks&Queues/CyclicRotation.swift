/*
Rotate array to right N times.
https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/

For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 
 Shoot for correctness. Not performance.
 */

func queueRight(A: [Int], K: Int) -> [Int]{
    guard !A.isEmpty else { return [] }
    guard K > 0 else { return A }

    var result = A
    var target = K

    while target > 0 {
        let last = result.last!
        result.insert(last, at: 0)
        result.remove(at: A.count)
        target -= 1
    }

    return result
}
print("STACK")
print(queueRight(A: [1, 2, 3, 4, 5], K: 1)) // [5, 1, 2, 3, 4]
print(queueRight(A: [1, 2, 3, 4, 5], K: 2)) // [4, 5, 1, 2, 3]
print(queueRight(A: [1, 2, 3, 4, 5], K: 3)) // [3, 4, 5, 1, 2]
print(queueRight(A: [3, 8, 9, 7, 6], K: 3)) // [9, 7, 6, 3, 8]

/*
 Rotate array to left N times.
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [8, 9, 7, 6, 3]
     [8, 9, 7, 6, 3] -> [9, 7, 6, 3, 8]
     [9, 7, 6, 3, 8] -> [7, 6, 3, 8, 9]

 Shoot for correctness. Not performance.
 */

func solutionQueueLeft(A: [Int], K: Int) -> [Int] {
    guard !A.isEmpty else { return [] }
    guard K > 0 else { return A }
    
    var result = A
    var target = K

    while target > 0 {
        let first = result.first!
        result.append(first)
        result.remove(at: 0)
        target -= 1
    }

    return result
}
print("QUEUE")
print(solutionQueueLeft(A: [1, 2, 3, 4, 5], K: 1)) // [2, 3, 4, 5, 1]
print(solutionQueueLeft(A: [1, 2, 3, 4, 5], K: 2)) // [3, 4, 5, 1, 2]
print(solutionQueueLeft(A: [1, 2, 3, 4, 5], K: 3)) // [4, 5, 1, 2, 3]
print(solutionQueueLeft(A: [3, 8, 9, 7, 6], K: 3)) // [7, 6, 3, 8, 9]