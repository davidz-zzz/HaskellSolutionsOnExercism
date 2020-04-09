module LeapYear (isLeapYear) where

type Year = Int

isLeapYear :: Year -> Bool
isLeapYear year = isEvery4Year && (isEvery100Year || isEvery400Year ) 
        where
            isEvery4Year = year  `rem` 4 == 0
            isEvery100Year = year `rem`  100 /= 0
            isEvery400Year = year `rem`  400 == 0
