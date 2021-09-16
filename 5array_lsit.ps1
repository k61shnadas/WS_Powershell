# Defining an ArrayList is exactly like defining an array, except that you 
# need to cast it as an ArrayList.Arraylist is dyanmic and fixed,array list not create every time while any process 
# happend in array,so performance is good
$colorpicker=[System.Collections.ArrayList]@('white','black','green')
$colorpicker

# use the Add() and Remove() methods to add or remove items from an ArrayList

$colorpicker.Add('yellow')
$colorpicker

$colorpicker.Remove('black')

Write-Host("After add and remove element from array list")

$colorpicker