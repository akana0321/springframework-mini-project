// 서버로 보낼 JSON Object
var formJsonObject;

// 수량 올리기
function fnCalCount(type, inputId) {
    var jqInputid = "#" + inputId;
    var nowCount = Number($(jqInputid).val());  // 현재 값 가져오기

    if(type == 'p') {
        $(jqInputid).val(nowCount+1);
    } else {
        if(nowCount > 0) {
            $(jqInputid).val(nowCount-1);
        }
    }
}

/*  수량 올리고 합계
    type: p(lus) or m(inus)
    countId: 수량
    itemNum: 품목(item1, item2, ...)
    sumId: 해당 품목의 합계
    nowSum.toLocaleString();: 천 단위 , 출력

    nowSum.replace("₩ ", "");
    nowSum.replaceAll(",", ""); -> 실제 데이터 전송은 '₩ '와 ','를 없애야 하므로 전송시 사용해야 함
*/

// questionContent06's items
var content06Furniture = {
    "furniture1": 40000,
    "furniture2": 30000,
    "furniture3": 30000
};

function fnCalCountNSum(type, furnitureNcount, furnitureNum, furnitureNsum) {
    let jqFurnitureNcount = "#" + furnitureNcount;
    let jqFurnitureNsum = "#" + furnitureNsum;

    let nowCount = Number($(jqFurnitureNcount).val());  // 현재 수량
    let nowSum = 0;
    if(type == 'p') {
        nowCount++;
    } else {
        if(nowCount > 0) {
            nowCount--;
        }
    }
    nowSum = nowCount * content06Furniture[furnitureNum];
    $(jqFurnitureNcount).val(nowCount);
    $(jqFurnitureNsum).val("₩ " + nowSum.toLocaleString());
}

// JSON Array -> JSON Object
function objectifyForm(formArray) {
//serialize data function
var returnArray = {};
for (var i = 0; i < formArray.length; i++){
    returnArray[formArray[i]['name']] = formArray[i]['value'];
}
return returnArray;
}

function setDisplay(target) {
    let divName = "#" + target;
    let liClass = "." + target;
    
    $(divName).css("display", "flex");
    $(divName).css("flexDirection", "column");
    $(divName).css("justifyContent", "center");
    $(divName).css("alignItems", "center");

    $(liClass).addClass("active");
}

/* questionResult */


function pyInputOpen() {
    document.getElementById("questionPY").style.display = "block";
}

function pyInputClose() {
    document.getElementById("questionPY").style.display = "none";
}

function pyInputComplete() {
    event.preventDefault();
    let pyValue = $("#py").val();
    let check = /^[0-9]+$/;

    if(pyValue.length == 0) {
        $("#pyHelp").html('<span style="color: red;">숫자를 입력해주세요</span>');
        $("#pyHelp").removeAttr("hidden");
    } else {
        if(!check.test(pyValue)) {
            $("#pyHelp").html('<span style="color: red;">숫자만 입력해주세요</span>');
            $("#pyHelp").removeAttr("hidden");
        } else if(pyValue == 0) {
            $("#pyHelp").html('<span style="color: red;">0이상의 값을 입력해주세요</span>');
            $("#pyHelp").removeAttr("hidden");
        } else {
            $("#pyHelp").attr("hidden");
            pyValue = parseInt(pyValue);
            $("#questionPY").css("display", "none");
            setDisplay("questionContent01");
            location.href = "#questionContent01";
        }
    }
}   

function submitForm() {
	formJsonObject = objectifyForm($("#questionForm").serializeArray());
	console.log("ajax 시작 전");
	$.ajax({
		type: "post",
		url: "questionResult",
		data: formJsonObject,
		dataType: "json",		
	}).done((data) => {
		let result = data;
		console.log(result);
		/*$.ajax({
			type: "post",
			url: "questionResult",
			data: result,
			dataType: "json",	
		}).done((data) => {
			console.log("두번째 ajax");
			console.log(data);
		})*/
	});
} 