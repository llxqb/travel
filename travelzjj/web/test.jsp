<%--
  Created by IntelliJ IDEA.
  User: li.liu
  Date: 2018/6/21
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>JS实现复制Div(span)的内容到剪切板</title>
    <script type="text/javascript">
        function copyTextareaValue() {
            var textareaValue = document.getElementById("textareaValue");
            textareaValue.select(); // 选择对象
            document.execCommand("Copy");
            alert("已复制好，可贴粘。");
        }

        function copyInputValue() {
            var inputValue = document.getElementById("inputValue");
            inputValue.select(); // 选择对象
            document.execCommand("Copy");
            alert("已复制好，可贴粘。");
        }

        function copySpanValue() {
            var spanValue = document.getElementById('spanValue');
            window.getSelection().selectAllChildren(spanValue);
            document.execCommand("Copy");
            alert("已复制好，可贴粘。");
        }
    </script>
</head>
<textarea cols="40" rows="5" id="textareaValue">我是textarea标签</textarea> </br>
<input id="inputValue" value="我是input标签"/></br>
<span id="spanValue">我是span标签</span></br>

<button onClick="copyTextareaValue()">点击复制textarea标签内容</button>
</br>
<button onClick="copyInputValue()">点击复制input标签内容</button>
</br>
<button onClick="copySpanValue()">点击复制span标签内容</button>
</br>

</body>
</html>
