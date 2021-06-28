# For Loop
for var in word1 word2 … wordn

do

Statement(s) to be executed for every word.

done
```
#!/bin/sh

for var1 in 1 2 3
do
   for var2 in 0 5
   do
      if [ $var1 -eq 2 -a $var2 -eq 0 ]
      then
         break 2
      else
         echo "$var1 $var2"
      fi
   done
done
```
Output: 
1 0
1 5


# While Loop
while command

do

Statement(s) to be executed if command is true

Done

```
#!/bin/sh

a=0

while [ $a -lt 10 ]
do
   echo $a
   if [ $a -eq 5 ]
   then
      break
   fi
   a=`expr $a + 1`
done
```
Output: 0
1
2
3
4
5

# until Loop
until command

do

Statement(s) to be executed until command is true

done

```
#!/bin/sh
a=15
until [ $a -lt 10 ]
do
   echo $a
   a=`expr $a - 1`
done
```
Output: 15
14
13
12
11
10
