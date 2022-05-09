var count=0;
function question() {
    count += 1;
    var tmp = document.getElementById("content");
    var value = tmp.value;
    var question = document.getElementById("question");

    var date = new Date();
    var dateString = date.getFullYear() + "-" + date.getMonth() + "-" + date.getDate() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
   
    var data = "<div class='text-left mt-2 ml-2' style='font-size: 30px; font-weight: 600; padding-top: 2%;'>문의</div><hr/>";
    data += "<div class='form-group m-4  text-right'> <intput a class='btn btn-light' onclick='remove(";
    data += count;
    data += ")'>삭제하기</a></div>"
    data += "<div class='text-left m-5'><div><pre class='ml-3' >"
    data += value;
    data += "</pre></div><div class='text-left'>첨부 파일 : </div><div class='text-right' style='padding-bottom: 2%' ;><span style='font-size: 20px; font-weight: 500;'>";
    data += dateString;//"2022-04-23 12:00:00";
    data += "</span></div></div></div>";

    let div = document.createElement("div");
    div.setAttribute("class", "col-md-12 shadow mb-3")
    div.setAttribute("style","background-color : rgb(239, 239, 239);")
    div.setAttribute("id",count);
    div.setAttribute("data-aos","zoom-in-up");
    div.setAttribute("data-aos-duration","2000");
    div.setAttribute("data-aos-offset","200")
    div.innerHTML = data;
    question.appendChild(div);
    
  }

  function remove(value){
    let div = document.getElementById(value);
    div.setAttribute("class","col-md-12 shadow mb-3");
    setTimeout(function() { 
      div.remove();
    }, 1000);
  }


