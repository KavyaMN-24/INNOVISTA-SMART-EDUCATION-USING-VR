<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DBQuery"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Horizontal Blocks</title>
    <link rel="stylesheet" href="newcss.css">
    <link rel="stylesheet" href="newcss1.css">
    <style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
    <script>
        function check1(){
          
                window.location.href = "index.jsp";
            
            
        }
        
    </script>
</head>
<body>
     <div class="container2">
        <div class="block2">Smart VR Education And Tourism
            <div id="msg"></div>
        </div>
      
    </div>
    <div class="containerq">
        <div class="blockq">
        <table id="customers">
                <tr><td>Question No</td><td>Correct Answer</td><td>Your Answer</td><td>Score</td><td>Date</td><td>Time</td></tr>
            
<%
    String catg=request.getParameter("catg");
    DBQuery db=new DBQuery();
    ResultSet rs=db.get_answers1(catg);
   
    int total=0;
    while(rs.next())
    {
        String qno=rs.getString("qno");
       
        String cans=rs.getString("cans");
        String sans=rs.getString("sans");
        int score=rs.getInt("score");
        String adate=rs.getString("adate");
        String atime=rs.getString("atime");
        total=total+score;
        
    
    %>

        
            <tr><td><%=qno%></td><td><%=cans%></td><td><%=sans%></td><td><%=score%></td><td><%=adate%></td><td><%=atime%></td></tr>
            
            
         
       
      <%}%> 
      <tr><td>Total Score is <%=total%> in category <%=catg%></td></tr>
      </table>
        </div>
      
    </div>
    <div class="container1">
        <button class="block1" onclick="return check1();">Next</button>
    </div>
</body>
</html>