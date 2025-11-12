<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VR Classroom</title>
    <link rel="stylesheet" href="newcss.css">
    <script>
        function check1(){
          //  alert("1");
            window.location.href = "quiz1_1.jsp?qno=1";
        }
        function check2(){
            //alert("2");
            window.location.href = "quiz2_1.jsp?qno=1";
            
        }
        function check3(){
            //alert("3");
            window.location.href = "quiz3_1.jsp?qno=1";
            
        }
    </script>
</head>
<body>
     <div class="container2">
        <div class="block2">Smart VR Education And Tourism</div>
      
    </div>
    <div class="container">
        <div class="block"><iframe width="100%" height="100%"
src="https://www.youtube.com/embed/2aJ9cOwbzxo?si=5P4SleYoNEDTpr-A">
            </iframe>
     
        </div>
<!--        <div class="block"><video id="video" width="100%" height="100%" controls autoplay >
        <source src="3.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video></div>-->
      
        <div class="block"><iframe width="100%" height="100%"
src="https://www.youtube.com/embed/L_tqK4eqelA?si=hqtTK_JDLQYK3TCX">
</iframe></div>
        <div class="block"><iframe width="100%" height="100%"
src="https://www.youtube.com/embed/RdFkC6Gtb5A?si=Ga5kCweS1XeXLlRT">
            </iframe></div>
    </div>
   
      <div class="containerp">
        <button class="blockp" > <a href="https://www.youtube.com/embed/2aJ9cOwbzxo?si=5P4SleYoNEDTpr-A">Play</a></button>
        <button class="blockp" > <a href="https://www.youtube.com/embed/L_tqK4eqelA?si=hqtTK_JDLQYK3TCX">Play</a></button>
        <button class="blockp" > <a href="https://www.youtube.com/embed/RdFkC6Gtb5A?si=Ga5kCweS1XeXLlRT">Play</a></button>
       
    </div>
    <div class="container1">
        <button class="block1" onclick="return check1();">Quiz</button>
        <button class="block1" onclick="return check2();">Quiz</button>
        <button class="block1" onclick="return check3();">Quiz</button>
       
    </div>
</body>
</html>