/*
 You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

 The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".

    Ex.
    In: J = "aA", S = "aAAbbbb"
    Out: 3
 */

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var numOfJewels = 0
    for stone in S {
        if J.contains(stone) {
            numOfJewels += 1
        }
    }
    return numOfJewels
}

numJewelsInStones("aA", "aAAbbbbb") == 3
numJewelsInStones("z", "ZZ") == 0
