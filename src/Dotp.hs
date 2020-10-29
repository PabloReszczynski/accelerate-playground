module Dotp (dotp) where

import Data.Array.Accelerate as A
import Data.Array.Accelerate.LLVM.Native as CPU

dotp :: Acc (Vector Float) -> Acc (Vector Float) -> Acc (Scalar Float)
dotp xs ys = A.fold (+) 0 (A.zipWith (*) xs ys)
