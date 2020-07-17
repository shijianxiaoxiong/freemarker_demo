<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Freemaker</title>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>${ran}</h1>

<input type="text" id="test">
<button id="app">点我</button>

<#assign linkman="tanghs">   <#--定义变量-->

<#if linkman == "tanghs">     <#--变量判断-->
   <li style="Color:yellowgreen;font-size: 2em">Java is the best Language ！</li>
</#if>

</body>
</html>