//
//  BinaryHeap.swift
//  BinaryHeap
//
//  Created by Shawn Wu on 9/23/18.
//  Copyright © 2018 Shawn Wu. All rights reserved.
//

import Foundation

public class BinaryHeap<T> where T: Comparable {
    private var ar = [T]()
    
    public func isEmpty() -> Bool {
        return ar.count == 0
    }
    
    public func add(_ obj: T) {
        ar.append(obj)
        var idx = ar.count - 1
        var parent = (idx - 1) / 2
        while ar[parent] > ar[idx] {
            swap(idx, parent)
            idx = parent
            parent = (idx - 1) / 2
        }
    }
    
   public func peek() -> T? {
        return ar.first
    }
    
    public func getMin() -> T? {
        let top = ar.first
        siftDown()
        return top
    }
    
    public func delete(obj: T) {
        var target = -1
        for i in 0..<ar.count {
            if ar[i] == obj {
                target = i
                break
            }
        }
        if target != -1 {
            siftDown(index: target)
        }
    }
    
    private func siftDown(index: Int = 0) {
        var idx = index
        ar[idx] = ar.removeLast()
        while (idx*2 < ar.count && ar[idx] > ar[idx*2]) || (idx*2 + 1 < ar.count && ar[idx] > ar[idx*2+1]) {
            if idx*2 + 1 < ar.count {
                if ar[idx*2] > ar[idx*2+1] {
                    swap(idx, idx*2+1)
                    idx = idx*2+1
                } else {
                    swap(idx, idx*2)
                    idx = idx*2
                }
            } else {
                swap(idx, idx*2)
                idx = idx*2
            }
        }
    }
    
    private func swap(_ source: Int, _ dest: Int) {
        let temp = ar[source]
        ar[source] = ar[dest]
        ar[dest] = temp
    }
}
