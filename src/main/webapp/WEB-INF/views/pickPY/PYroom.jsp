<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script>

$(document).ready(function(){
	 $(".furniture").on('click', function(e){
	    $("#div1").load("productInfo");
	    console.log("workin?");
	 });
});

</script>

</head>

<body>


    <div class="d-flex row col-sm-12 p-0 m-0" style="width: 100%; height: 100%;">
        <!-- left page -->
        <div class="col-sm-9 p-0 m-0" style="height: 100%; width:100%; position: relative;">
         <!-- PYRoom Image -->
         <img id="PYimg" src="https://cdn-bhnll.nitrocdn.com/gSDMXibcJluvzIippFBvhCZIaoOxCvih/assets/static/optimized/rev-ccf470e/wp-content/uploads/handsome-study-interior-design-houston.png" width="100%" height="90%" usemap="#PYRoom" alt="" />
         <!-- Image Tag -->
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 37vh; left: 7vw;" product-data="flowerbottle" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 20vw;" product-data="flowerbottle" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 40vw; " product-data="flowerbottle" onclick="changeContent()"></div>
         
         <!-- PYHeader -->
         <header >
          <div style="background-color: white;">
              <div class="menu" >
                <div class="menu-btn" menu-data="waiting" >대기실</div>
                <div class="menu-btn" menu-data="consult" style="width: fit-content;">상담실</div>
                <div class="menu-btn" menu-data="operating" style="width: fit-content;">교정 진료실</div>
                <div class="menu-btn" menu-data="disinfection" style="width: fit-content;">수술실</div>
                <div class="menu-btn" menu-data="treatment" style="width: fit-content;">소독실</div>
                <div class="menu-btn" menu-data="operating" style="width: fit-content;">진료실</div>
                <div class="menu-btn" menu-data="storage" style="width: fit-content;">수납실</div>
              </div>
          </div>
      </header>
       <script type="text/javascript">
            $(document).ready(function(){
            	/* PYHeader - click menu-btn change image */
                $(".menu-btn").on('click', function(e){
                e.target.getAttribute("menu-data");
                var menu = e.target.getAttribute("menu-data");
                    console.log("${pageContext.request.contextPath }/resources/images/pickPY/"+ menu +"Room.png");
                    $("#PYimg").attr("src", "${pageContext.request.contextPath }/resources/images/pickPY/"+ menu +"Room.png");
                    
                });
                /* Get ProductName form ImageTag */
                $(".furniture").on('click', function(e){
                	var product = e.target.getAttribute('product-data');
                	console.log(product);
                });
            });
            
            
            
            </script>
      </div>
       <div class="col-sm-3 p-0 m-0" >
		<div id="div1" style=" "></div>
		</div>
		</div>


</body>

</html>

