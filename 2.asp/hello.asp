<!DOCTYPE HTML>
<html>
<head>
  <style>
    #div1{
          background-color: #d0e4fe;
    }
    .content {
      font-family: "Times New Roman";
       font-size: 20px;
       color: blue;
    }
  </style>
</head>
<body>
<%
Dim myName,myMessage
myName="Sun"
myMessage="Hello World"
%>
  <h1><%response.write(myMessage)%></h1>
  <div id='div1' >My Name is "<%=myName%>" </div>
  <hr>
  <div id="datetime" class="content">3/6/2016 </div>
  <script type="text/javascript">
      document.getElementById("datetime").innerHTML
        = (new Date()).toString();
  </script>
</body>
</html>
