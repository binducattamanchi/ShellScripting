
# Sed examples
* Replace all occurrences of a string - 
     ```  
     $ sed 's/old/new/g' file.txt
     ```  
* Replace only the nth occurrence of a string - 
     ```  
     $ sed 's/old/new/2' file.txt
     ```  
* Replace replace a string only on the 5th line - 
     ```  
     $ sed '5 s/old/new/' file.txt
     ```  
* Replace "world" with "universe" but only if the line begins with "hello" - 
     ```  
     $ sed '/hello/s/world/universe/' file.txt
     ```  
* Remove "" from the end of each line - 
     ```  
     $ sed 's/\\$//' file.txt
     ```  
* Remove all whitespace from beginning of each line - 
     ```  
     $ sed 's/^ *//g' file.txt
     ```  
* Print 1-4 lines
     ```  
     $ sed -n '1,4 p' input.txt
     ```  
* Add a new line after each line
     ```  
     $ sed '/^$/d;G' Sed_testing.txt
     ```  
* Add 2 lines after each line
     ```  
     $ sed 'G;G' Sed_testing.txt
     ```  
* Print alternate lines
     ```  
     $ sed 'n;d' file.txt
     ```  
* Delete all empty lines
     ```  
     $ sed '/^$/d' Sed_testing.txt
     ```  
* Delete lines starting with 'C'
     ```  
     $ sed '/^C/d' Sed_testing.txt
     ```  
* Replace from 2nd line of the file, whereever h is there replace e with E
     ```  
     $ sed -n '2,$p' Sed_testing.txt| sed '/h/s/e/E/g'
     ```  


