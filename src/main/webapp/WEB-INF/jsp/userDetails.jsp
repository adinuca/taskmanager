<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User details</title>
<script>
var counter = 1;
var limit = 10;
function addCategory(divName, fieldName){
    if (counter == limit)  {
        alert("You have reached the limit of adding " + counter + " inputs");
    }
    else {
        var newdiv = document.createElement('div');
        newdiv.innerHTML = fieldName + (counter + 1) + " <br><input type='text' name='myInputs[]'>";
        document.getElementById(divName).appendChild(newdiv);
        counter++;
    }
}
</script>

</head>
<body>
    <div>
<form method="POST">
     <div id="categoryInput">
          Category 1<br><input type="text" name="myInputs[]">
     </div>
     <input type="button" value="Add another category" onClick="addCategory('categoryInput', '');">
</form>
    </div>
    <div>
<form method="POST">
     <div id="dynamicInput">
          Status 1<br><input type="text" name="myInputs[]">
     </div>
     <input type="button" value="Add another category" onClick="addStatus('dynamicInput', 'Category');">
</form>
    </div>

</body>
</html>