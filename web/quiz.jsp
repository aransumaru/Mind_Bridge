<%-- 
    Document   : quiz
    Created on : Oct 13, 2024, 8:59:03 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .view-results {
            display: inline-block;
            padding: 10px 20px;
            background-color: #21bf73;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
        }

        .view-results:hover {
            background-color: #1a9b5d;
        }

    </style>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Test Your Skills</title>
        <link rel="stylesheet" href="folder/stylesheet.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">



    </head>

    <body>
        <div id="wrapper" style="background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.8)), url(images/logo1.jpg);">
            <nav>
                <ul>
                    <li id="about">About Us</li>
                    <li><a href="mailto:hieupthe176422@fpt.edu.vn" class="mail">Liên hệ với chúng tôi</a></li>
                </ul>
            </nav>
            <div id="form-box">
                <form>
                    <select id="language">
                        <option  value="HTML"selected="selected">Bài Test đánh giá Lo âu - Trầm cảm - Stress (DASS 21)</option>
                    </select> 
                    <a href="#lb3" class="choose-lang">Bắt đầu</a>
                </form>
            </div>    
        </div>

        <div class="quiz">

            <div id="info">
                <div id="ques-left">Câu hỏi:1/10</div>
            </div>
            <div id="ques-view">

            </div>
            <div class="question">
                <h1>Câu hỏi</h1>
            </div>

            <div class="choice">
                <div class="options"><input type="radio" name="options" value="option1" id="opt0"><label for="opt0" id="lb0">Option1</label></div>
                <div class="options"><input type="radio" name="options" value="option2" id="opt1"><label for="opt1" id="lb1">Option2</label></div>
                <div class="options"><input type="radio" name="options" value="option3" checked="checked" id="opt2"><label for="opt2" id="lb2">Option3</label></div>
                <div class="options"><input type="radio" name="options" value="option4" id="opt3"><label for="opt3" id="lb3">Option4</label></div>   
            </div>

            <div class="ans-btn">
                <button type="button" class="submit-answer">Submit Answer</button>
                <a href="#display-final-score" class="view-results">View Results</a>

            </div>

        </div>

        <div class="final-result">
            <h1>Kết thúc câu hỏi</h1>
            <div class="solved-ques-no">1</div>
            <div id="display-final-score">1</div>
            <button id="restart">Kiểm tra lại</button>   
            <a href="index.jsp" id="restart" class="restart-btn">Trở về trang chủ</a>  
            <a href="https://docs.google.com/forms/d/e/1FAIpQLScbQ0JDNiB21mdAgZLKXX6oZti8qC4IXQestzxbq6pK1tAZiA/viewform?fbclid=IwY2xjawF6nclleHRuA2FlbQIxMAABHb-Yj2MIQDR-Rz4C-zItN4rT0QGORI6VLuQlWTopE4VWUn_-EwUKnNuy0g_aem_Bi0YFqOlTQXlfGRRqxRC2Q" id="restart" class="restart-btn">Điền Form Khảo Sát</a>  
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="folder/script.js"></script>
    </body>

</html>