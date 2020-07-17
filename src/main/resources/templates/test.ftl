<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Freemaker</title>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<input type="text" id="test">
<button id="app">点我</button>


<#assign linkman="小猪佩奇">

联系人：${linkman}
${ran}
<script>
    $(function(){
        $("#app").click(function(){
            $("#test").attr("value","77777")
        });
    });
</script>
</body>
</html>