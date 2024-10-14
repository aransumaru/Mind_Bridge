//function myfunc(){
//    alert(document.getElementById("language").value);
//}

var countQues = 0;
var lang;
var scoreDepression = 0;  // Điểm cho phần Trầm cảm
var scoreAnxiety = 0;     // Điểm cho phần Lo âu
var scoreStress = 0;      // Điểm cho phần Căng thẳng

var HTMLquestions = [
    {
        question: "Tôi thấy khó mà thoải mái được",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },
    
    {
        question: "Tôi không thấy có chút cảm xúc tích cực nào",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi bị rối loạn nhịp thở (thở gấp, khó thở dù chẳng làm việc gì nặng)",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi thấy khó bắt tay vào công việc",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi đã phản ứng thái quá khi có những sự việc xảy ra",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi bị ra mồ hôi (chẳng hạn như mồ hôi tay...)",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi thấy mình đang suy nghĩ quá nhiều",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi lo lắng về những tình huống có thể khiến tôi hoảng sợ hoặc biến tôi thành trò cười ",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi thấy mình chẳng có gì để mong đợi cả",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    },

    {
        question: "Tôi thấy bản thân dễ bị kích động",
        choices: ["Không đúng với tôi chút nào cả", "Đúng với tôi một phần, hoặc thỉnh thoảng mới đúng", "Đúng với tôi phần nhiều, hoặc phần lớn thời gian là đúng", "Hoàn toàn đúng với tôi, hoặc hầu hết thời gian là đúng"],
        scores: [0, 1, 2, 3]
    }
];


//alert(questions.length);
document.querySelector(".view-results").style.display="none";
document.querySelector(".quiz").style.display="none";
document.querySelector(".final-result").style.display="none";








// Hàm cập nhật câu hỏi và câu trả lời
document.querySelector(".choose-lang").addEventListener("click", function () {
    lang = document.getElementById("language").value + "questions";
    document.getElementById("ques-left").textContent = "Câu hỏi : " + (countQues + 1) + "/" + window[lang].length;
    
    document.querySelector(".quiz").style.display = "block";
    
    document.querySelector(".question").innerHTML = "<h1>" + window[lang][countQues].question + "</h1>";
    for (i = 0; i <= 3; i++) {
        document.getElementById("opt" + i).value = i;  // Thay đổi giá trị của các câu trả lời (0-3)
        document.getElementById("lb" + i).innerHTML = window[lang][countQues].choices[i];
    }
});

// Hàm tính điểm cho từng câu hỏi
document.querySelector(".submit-answer").addEventListener("click", function () {
    var selectedValue = parseInt(document.querySelector('input[name="options"]:checked').value);  // Giá trị được chọn
    if (lang === "HTMLquestions") {
        scoreDepression += selectedValue;
    } else if (lang === "CSSquestions") {
        scoreAnxiety += selectedValue;
    } else if (lang === "JSquestions") {
        scoreStress += selectedValue;
    }

    if (countQues < window[lang].length - 1) {
        countQues++;
    } else {
        document.querySelector(".submit-answer").style.display = "none";
        document.querySelector(".view-results").style.display = "unset";
    }

    document.getElementById("ques-left").textContent = "Câu hỏi : " + (countQues + 1) + "/" + window[lang].length;
    document.querySelector(".question").innerHTML = "<h1>" + window[lang][countQues].question + "</h1>";
    for (i = 0; i <= 3; i++) {
        document.getElementById("opt" + i).value = i;
        document.getElementById("lb" + i).innerHTML = window[lang][countQues].choices[i];
    }
});

// Hàm hiển thị kết quả
document.querySelector(".view-results").addEventListener("click", function () {
    document.querySelector(".final-result").style.display = "block";
    
    // Tính tổng điểm cho từng phần và nhân đôi tổng điểm
    scoreDepression *= 2;
    scoreAnxiety *= 2;
    scoreStress *= 2;
    
    // Hiển thị kết quả
     // Hiển thị kết quả
    document.querySelector(".solved-ques-no").innerHTML = "Bạn đã hoàn thành " + (countQues + 1) + " câu hỏi";

    // Xác định kết quả cuối cùng dựa vào điểm số trầm cảm
    var finalResult = "";
    if (scoreDepression <= 13) {
        finalResult = "Kết quả: Có lẽ bạn đang bị căng thẳng, hãy cùng thả lỏng nhé <3";
    } else if (scoreDepression <= 20) {
        finalResult = "Có thể bạn đang bị lo âu, chung tôi có thể lăng nghe câu chuyện của bạn";
    } else {
        finalResult = "Có thể bạn đang rơi vào trạng thái trầm cảm, không sao, hãy cũng tham gia với chúng mình và chúng mình sẽ giúp bạn";
    }

    // Hiển thị tổng điểm và kết quả
    document.getElementById("display-final-score").innerHTML =finalResult;
});

// Hàm khởi động lại quiz
document.getElementById("restart").addEventListener("click", function () {
    location.reload();
});



/*Smooth Scroll End*/