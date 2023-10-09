---------------Merge.hs-------------
merge [] [] = []
merge [] (y:ys) = (y:ys)
merge (x:xs) [] = (x:xs)
merge (x:xs) (y:ys) = if (x<=y) then (if (x==y) then x:(merge xs ys) else (x:(merge xs (y:ys))))
                      else y:(merge (x:xs) ys)
------------------------TakeAlternate.hs---------------------------
takeAlternate 1 (p:ps)         = [p]
takeAlternate n [c,d]          = [c]-- two elements
takeAlternate n [a]            = [a]-- for one elements
takeAlternate n (x:(y:(z:xs))) = x: (takeAlternate (n-1) (z:xs))
takeAlternate n []             = error "empty list"



----------------last.hs-----------
last [] =error "List is empty"
last [x]=x
last (x:xs) =Main.last xs

--------------zip.hs------

tuple x y = (x,y)
zip (x:xs) (y:ys) = (Main.tuple x y):(Main.zip xs ys)
zip _      _      = []



-------------zipWith.hs----------
zipWith f [] [] = []
zipWith f (x:xs) (y:ys) = (f x y):(Main.zipWith f xs ys)
-----------------------MultiplesOfTwoThreeFive.hs
numsFrom n = n : numsFrom (n+1)
integers   = numsFrom 1
list1=[x | x<-integers,( x `mod` 2 == 0)]
list2=[x | x<-integers,( x `mod` 3== 0)]
list3=[x | x<-integers,( x `mod` 5== 0)]
list4= Main.merge list3 (Main.merge list1 list2)
---------foldR.hs----------
foldr f z []     = z
foldr f z (x:xs) = f x (Main.foldr f z xs)
---------map using foldr-------
map f []       = []
map f (x:xs)   = Main.foldr (\x xs -> f x:xs) [] (x:xs)

