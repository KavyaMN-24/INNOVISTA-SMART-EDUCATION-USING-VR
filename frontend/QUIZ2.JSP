<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DBQuery"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VR Classroom</title>
    <link rel="stylesheet" href="newcss.css">
    <link rel="stylesheet" href="newcss1.css">
    <script>
        function check1(qno,ans){
           // alert(qno);
           // alert(ans);
            var selectedOption = document.querySelector('input[name="answer1"]:checked');
           // alert(selectedOption.value);
            
            var xhr = new XMLHttpRequest();
            var url = "./submit_answer?qno="+qno+"&catg=Sahara_Desert&sans="+selectedOption.value+"&ans="+ans; 

            xhr.open("GET", url, true);

    
        xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Request was successful, you can handle the response here
            alert(xhr.responseText);
            if(xhr.responseText=='completed')
            {
                
                
                alert("Quiz Over");
                window.location.href = "result.jsp?catg=Sahara_Desert";
            }
            else{
                
                
                window.location.href = "quiz2_1.jsp?qno="+xhr.responseText;
            }
             
            }
         else {
            // Handle any errors here
         //   alert("Error occurred while calling the servlet.");
        }
    };

    xhr.send();
            
            
            
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
<%
    String qno=request.getParameter("qno");
    DBQuery db=new DBQuery();
    ResultSet rs=db.get_questions(qno, "Sahara_Desert");
   
    
    if(rs.next())
    {
        String ans=rs.getString("correct");
        System.out.println("ans="+ans);
    
    %>

        <div class="blockq">Question <%=qno%>
            <p><%=rs.getString("question")%></p>
         <div class="options">
            <input type="radio" id="option1" name="answer1" value="<%=rs.getString("opt1")%>">
            <label for="option1"><%=rs.getString("opt1")%></label><br>
            <input type="radio" id="option2" name="answer1" value="<%=rs.getString("opt2")%>">
            <label for="option2"><%=rs.getString("opt2")%></label><br>
            <input type="radio" id="option3" name="answer1" value="<%=rs.getString("opt3")%>">
            <label for="option3"><%=rs.getString("opt3")%></label><br>
            <input type="radio" id="option4" name="answer1" value="<%=rs.getString("opt4")%>">
            <label for="option4"><%=rs.getString("opt4")%></label><br>
        </div>
        </div>
      
    </div>
    <div class="container1">
        <button class="block1" onclick="return check1('<%=qno%>','<%=ans%>');">Next</button>
      <%}%>  
       
    </div>
</body>
</html>