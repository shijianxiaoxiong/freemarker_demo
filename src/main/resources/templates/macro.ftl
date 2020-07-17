<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Macro</title>
</head>
<body>

<#macro greet>
    <font size="+2">Hello Joe!</font>
</#macro>
<#--1.macro 指令自身不输出任何内容， 它只是用来创建宏变量，所以就会有一个名为 greet 的变量-->
<#--2.在 <#macro greet> 和 </#macro> 之间的内容 (称为 宏定义体) 将会在使用该变量作为指令时执行。-->

<#--3.可以在FTL标记中通过 @代替#来使用自定义指令。 使用变量名作为指令名。-->
<#--4.而且，自定义指令的 结束标记 也是需要的。那么， 就可以这样来使用 greet：-->
<@greet></@greet>

<#--参数：可以定义多个参数，但每个参数都必须赋值，否则Fraamarker无法识别-->
<#--1.在 macro 指令中，宏名称的后面位置是用来定义参数的。这里我们仅在 greet 宏中定义一个参数person，-->
<#macro greet person>
    <font size="+2">Hello ${person}!</font>
</#macro>

<#--2.那么就可以这样来使用这个宏：-->
<@greet person="Fred"/> and <@greet person="Batman"/><br>

<#--3.添加一个新参数-->
<#macro greet person color>
    <font size="+2" color="${color}">Hello ${person}!</font>
</#macro>
<#--4.必须给出在宏中定义所有参数的值,可以在定义参数时直接赋值-->
<#macro greet person color="black">
    <font size="+2" color="${color}">Hello ${person}!</font>
</#macro>

<@greet person="Fred"/><br>
<@greet person="Fred" color="red"/>


</body>
</html>