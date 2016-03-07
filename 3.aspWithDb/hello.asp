<!DOCTYPE HTML>
<html>
<head>
  <style>
    .name{
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
  Set conn = Server.CreateObject("ADODB.Connection")
  conn.open "PROVIDER=SQLOLEDB;DATA SOURCE=WSUN-1;UID=test;PWD=test;DATABASE=hello"
  set rs=Server.CreateObject("ADODB.recordset")
  sql="SELECT Name,Message from Messages  WHERE Id =1"
  Dim myName,myMessage
  rs.Open sql, conn
 do until rs.EOF
  myName=rs("name")
  myMessage=rs("message")
%>
<h1><%response.write(myMessage)%></h1>
<div class='name' >My Name is "<%=myName%>" </div>
<%
rs.MoveNext
Loop
rs.close
conn.close
  %>

  <hr>
  <div id="datetime" class="content">3/6/2016 </div>
  <script type="text/javascript">
      document.getElementById("datetime").innerHTML
        = (new Date()).toString();
  </script>
</body>
</html>
