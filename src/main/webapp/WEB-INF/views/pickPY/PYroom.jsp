<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script>

$(document).ready(function(){
	 $(".furniture").on('click', function(e){
		 var product = e.target.getAttribute('product-data');
		 console.log(product);
	    $("#div1").load("productInfo?productId="+product);
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
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 37vh; left: 7vw;" product-data="unit-k3000b" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 20vw;" product-data="unit-k5000b" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 40vw; " product-data="unit-s2100z" onclick="changeContent()"></div>
         
         <!-- Get PYRoom version(PY) -->
         <%
    	request.setCharacterEncoding("euc-kr");
		int version = Integer.parseInt(request.getParameter("version"));
		System.out.println("PYRoom = version:"+version);
    	%>
         
         <!-- PYHeader -->
         <header >
          <div style="background-color: white;">
              <div class="menu" >
                <div><a class="menubtn menu-btn" menu-data="waiting">대기실</a></div>
                <div><a class="menubtn menu-btn" menu-data="consult">상담실</a></div>
                <div><a class="menubtn menu-btn" menu-data="operating">교정 진료실</a></div>
                <div><a class="menubtn menu-btn" menu-data="disinfection">수술실</a></div>
                <div><a class="menubtn menu-btn" menu-data="treatment">소독실</a></div>
                <div><a class="menubtn menu-btn" menu-data="operating">진료실</a></div>
                <div><a class="menubtn menu-btn" menu-data="storage">수납실</a></div>
                <c:set var="version" value="<%=version%>" scope="session"/>
			  <c:if test="${version != '50'}">
			     <div><a class="menubtn menu-btn" menu-data="storage">가공실</a></div>
			  </c:if>
			  <c:if test="${version > '65'}">
			     <div><a class="menubtn menu-btn" menu-data="storage">메이크업실</a></div>
			  </c:if>
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
		<div id="div1" style="height:100%; width:100% ">
	
		</div>
          </div>
		</div>


</body>

</html>

