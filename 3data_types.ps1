cls
$no=25
$no.GetType().Name
$pn=10.56
$pn.GetType().Name
$num = 0.1234567910
$num.GetType().Name
# $color = blue. Instead, you enclosed the value in single quotes, which indicates to PowerShell that the value is a series of letters, or a string. If you try to assign 
# the blue value to $color without the quotes, PowerShell will return an error

$color='blue'
$color.GetType().Name


$lang='powershell'
$clr='red'
$sentencee=" $lang is good scripting language and its color is $clr"
$sentencee
cls
'Today, $lang learned that $language loves the color $clr' 
# Abvoe showing double quotes and single quotes diffrenece




