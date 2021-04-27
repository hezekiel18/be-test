![BSIM Logo](https://www.banksinarmas.com/id/public/revamp/logoj.png;wa005ee3af0db84daa)


# Back End Developer Test

---

In this test, there are 4 cases that you need to solve.

The following programming languages could be used to solve the cases.
-   Java
-   Shell Script

### Cases
-   [_Case 1 - RoyalRumble_](#case-1---royalrumble)
-   [_Case 2 - DefenderArcade_](#case-2---defenderarcade)
-   [_Case 3 - SinarmasCafeA_](#case-3---sinarmascafea)
-   [_Case 4 - SinarmasCafeB_](#case-4---sinarmascafeb)

---


### _Case 1 - RoyalRumble_

An ordinal number is a word representing rank or sequential order. The naming convention for royal names is to follow a given name with an ordinal number using a Roman numeral to indicate the birth order of two people of the same name.
The Roman numerals from 1 to 50 are defined as follows: The numbers 1 through 10 are written I, II, III, IV, V, VI, VII, VIII, IX, and X. The Roman numerals corresponding to the numbers 20, 30, 40, and 50 are XX, XXX, XL, and L. For any other two-digit number < 50, its Roman numeral representation is constructed by concatenating the numeral(s) for its multiples of ten with the numeral(s) for its values < 10. For example, 47 is 40 + 7 = "XL" + "VII" = "XLVII".
In this challenge, you will be given a list of royal name strings consisting of a given name followed by an ordinal number. You must sort the list first alphabetically by name, then by ordinal increasing within any given name.
For example, if you are given the royal names [George VI, William II, Elizabeth I, William I] the result of the sort is [Elizabeth I, George VI, William I, William II].

##### Your Task:
`getSortedList` takes in a list of royal name strings and must return the list of names sorted first by given name, then by ordinal.
You are to submit only the implemented `RoyalRumble.java`. Please do not change the basic structure of `RoyalRumble.java` so it will still work with `Main.class` and `run.sh`.

##### Constraints:
There will be between 1 and 50 names on the list.
Each name is a single string composed of firstName and ordinal, separated by a space.
ordinal is a valid Roman numeral representing a number between 1 and 50, inclusive.
The length of firstName will be between 1 and 20.
Each firstName comprises only uppercase and lowercase ascii characters [A-Za-z].

_Sample Input_:
```
Louis IX
Louis VIII
David II
```
_Sample Output_:
```
David II
Louis VIII
Louis IX
```

---


### _Case 2 - DefenderArcade_

BSIM employees love playing video games, so they have Defender Arcade within the company (Work hard-Play hard). Since everyone is quite busy with work, everyone has provided the time (start time and finish time) when he or she wants to play games. If play time of two employees overlap then they start fighting and stop working. The boss got to know about this situation and asked you to help him by calculating the minimum number of Defender Arcades needed so that every employee can play during their specified time.
Note: If one employee is leaving and at the same time another employee is starting then only one Arcade is needed.

##### Your Task:
`countArcades` takes in a list of employees' play times and returns the number of arcade machines needed.
You are to submit only the implemented `DefenderArcade.java`. Please do not change the basic structure of `DefenderArcade.java` so it will still work with `Main.class` and `run.sh`.

##### Constraints:
There will be between 1 and 100 time periods in the list
Each item in the list is a string composed of start time and end time, separated by a space.
Times are denoted in 24-hour format. For example 915 means 9:15AM, 2145 means 9:45PM, etc.

_Sample Input_:
```
900 910
940 1200
950 1120
1100 1130
1300 1400
1350 1420
```
_Sample Output_:
```
3
```

---


### _Case 3 - SinarmasCafeA_

Since Sinarmas HQ is situated opposite a fruit stall in chinatown, Sinarmas is thinking of opening Sinarmas Cafe to earn more profit. The Cafe serves 3 items, with the following ingredients required:
-   APPLE PIE - 3x Apple
-   PINEAPPLE PIE - 3x Pineapple
-   FRUIT PARFAIT - 2x Apple + 2x Pineapple

You are an inventory manager in charge of checking if we can fulfill a customer's orders with the ingredients we have in stock. Luckily, the inventory list is contained in a text file.

##### Your Task:
Write a  script named `recipeChecker.sh` which will let us know if we can fulfill the order.

Your script should take in 2 command line arguments:
-   Arg 1: absolute file path of the inventory list (e.g. `fruitList.txt`)
-   Arg 2: the customer's order consisting only one of ["APPLE PIE", "PINEAPPLE PIE" or "FRUIT PARFAIT"] in BLOCK letters

Your script should output the following:
-   If there are enough ingredients to create the specified dessert, output exactly (including all punctuation) : You shall have (recipe name in block letters)!
-   Else, output: You shall not have (recipe name in block letters)
-   If an unrecognised recipe is provided (eg Pineapple Pie), output: We do not have that on the menu

##### Constraints:
You should consider all fruits to be case insensitive (i.e if a list contains "Apple" and "apple" you can consider them as 2 apples)
Each line of the inventory list provided will contain only one item, and terminates with a ","
Any item which contains "apple", such as "apples", "apple jam" or "rotten apple" should not be considered an "apple" ingredient.

_Example of `fruitList.txt`_:
```
Pineapples,
Apple,
Pineapple,
Orange,
APPLE,
Rotten apple,
Grape,
apple,
```
_Sample 1_:

```bash
./recipeChecker.sh fruitList.txt "APPLE PIE"
```

Output (_Explanation: Lines 2, 5, 8 contain 3 apples together_)

```
You shall have APPLE PIE!
```

_Sample 2_:

```bash
./recipeChecker.sh fruitList.txt "FRUIT PARFAIT"
```

Output (_Explanation: Lines 2, 5, 8 contains 3 apples, line 3 contains 1 pineapple. We need minimum 2 of each_)

```
You shall not have FRUIT PARFAIT
```

_Sample 3_:

```bash
./recipeChecker.sh fruitList.txt "CHICKEN PIE"
```

Output (_Explanation: Menu only contains PINEAPPLE PIE, APPLE PIE and FRUIT PARFAIT_)

```
We do not have that on the menu
```

---


### _Case 4 - SinarmasCafeB_

As Sinarmas Cafe expands, they decide to increase the menu items. Unfortunately, there were too many orders that went unfulfilled. Sinarmas’ Data Scientists request for some data so the Sinarmas Cafe Logistics Team may review how to better manage the inventory based on customer demand.
You decide to write another  script named `unfulfilledOrders.sh` to help the Data Scientists which will output the 3 most recent unfulfilled orders for the specified date and order, sorted by timestamp from oldest to newest.

##### Your Task:
Write a  script named `unfulfilledOrders.sh`.

Your script should take in 3 command line arguments:
-   Arg 1: absolute file path of the order list (e.g. `orderLists.txt`)
-   Arg 2: the customer's order
-   Arg 3: the order date in YYYY-MM-DD format

##### Constraints:
There is an infinite list of orders that are not predefined. You can consider the orders to be case insensitive. You may also get orders which contain non-alphabetical characters.
Each line of the order list provided will contain only one order at one timestamp
If there are fewer than 3 orders which fulfill the requirements, you can just display those.
The order list provided contains orders in a random order

_Example of `orderList.txt`_:
```
2019-01-18 15:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 16:40:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 13:15:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 10:15:00 order="MILLE CREPE" fulfilled=FALSE
2019-01-18 08:30:00 order="MILLE CREPE" fulfilled=TRUE
2019-01-18 13:25:00 order="STRAWBERRY SHORTCAKE" fulfilled=TRUE
2019-01-18 17:00:00 order="STRAWBERRY SHORTCAKE" fulfilled=TRUE
2019-01-17 10:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-17 18:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 12:15:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 11:30:00 order="MILLE Crepe" fulfilled=FALSE
```
_Sample 1_:

```bash
./unfulfilledOrders.sh orderList.txt "STRAWBERRY SHORTCAKE" 2019-01-18
```

Output (_Explanation: Lines 1-3, 6-7 and 10 contain STRAWBERRY SHORTCAKE orders on 2019-01-18
Lines 1-3, and 10 contain unfulfilled (fulfilled=FALSE) orders
Arrange lines 1-3 and 10 in ascending order, and the last 3 timings are 13:15:00, 15:30:00 and 16:40:00_)

```
2019-01-18 13:15:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 15:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 16:40:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
```

_Sample 2_:

```bash
./unfulfilledOrders.sh orderList.txt "MILLE CREPE" 2019-01-18
```

Output (_Explanation: Lines 4-5 and 11 contain MILLE CREPE orders on 2019-01-18
Lines 4 and 10 contain unfulfilled (fulfilled=FALSE) orders
Arrange lines 4 and 10 in ascending order, and the last up to 3 timings are 10:15:00 and 11:30:00_)

```
2019-01-18 10:15:00 order="MILLE CREPE" fulfilled=FALSE
2019-01-18 11:30:00 order="MILLE Crepe" fulfilled=FALSE
```

---
