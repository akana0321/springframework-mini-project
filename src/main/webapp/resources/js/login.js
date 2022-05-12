var index = 0;
window.onload = function () {
	slideShow();
};

function slideShow() {
	var i;
	var x = document.getElementsByClassName("slide1");
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}
	
	index++;
	if (index > x.length) {
		index = 1;
	}

	x[index - 1].style.display = "block";
	setTimeout(slideShow, 3000);
}

function idFindopen() {
	document.getElementById("idFind").style.display = "block";
}

function idFindclose() {
	document.getElementById("idFind").style.display = "none";
}

function idFindCompleteopen() {
	document.getElementById("idFind").style.display = "none";
	document.getElementById("idFindComplete").style.display = "block";
}

function idFindCompleteclose() {
	document.getElementById("idFindComplete").style.display = "none";
}

function pwFindopen() {
	document.getElementById("idFindComplete").style.display = "none";
	document.getElementById("pwFind").style.display = "block";
}

function pwFindclose() {
	document.getElementById("pwFind").style.display = "none";
}

function pwFindCompleteopen() {
	document.getElementById("pwFind").style.display = "none";
	document.getElementById("pwFindComplete").style.display = "block";
}

function pwFindCompleteclose() {
	document.getElementById("pwFindComplete").style.display = "none";
}