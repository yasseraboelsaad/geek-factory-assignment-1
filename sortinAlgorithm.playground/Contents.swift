//: Playground - noun: a place where people can play

import UIKit

func genericBubbleSort<T : Comparable>(array: Array<T>) -> Array<T>
{
    var newArray = array
    for i in 0..<newArray.count {
        for j in 0..<newArray.count {
            if newArray[i]<newArray[j] {
                let temp = newArray[j]
                newArray[j] = newArray[i]
                newArray[i] = temp
            }
        }
    }
    return newArray
}

func genericInsertionSort<T : Comparable>(array: Array<T>) -> Array<T>
{
    var newArray = array
    for i in 1..<newArray.count {
        let index = newArray[i]
        var j = i
        while j>0 && newArray[j-1]>index {
            newArray[j] = newArray[j-1]
            j=j-1
        }
        newArray[j]=index
    }
    return newArray
}

genericBubbleSort(array: [321,123,24,364,688,45,2])
genericBubbleSort(array: ["boy","sort","cool","apple"])
genericInsertionSort(array: [321,123,24,364,688,45,2])
genericInsertionSort(array: ["boy","sort","cool","apple"])
