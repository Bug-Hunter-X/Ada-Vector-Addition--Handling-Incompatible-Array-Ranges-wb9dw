# Ada Vector Addition: Handling Incompatible Array Ranges

This example demonstrates a potential runtime error in Ada when adding vectors with differing ranges.  Ada's strong typing and range checking help prevent many errors but requires careful attention to array bounds.

## The Problem

The `Add_Vectors` function assumes that input vectors `A` and `B` have the same range. If they don't, a runtime error will occur during execution.

## The Solution

The solution involves adding a check to ensure that the input vectors' ranges are compatible before performing the addition.