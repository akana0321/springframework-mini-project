<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainheader.css" />
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
	<%@ include file="/WEB-INF/views/common/mainheader.jsp" %>
	<!-- Get PYRoom version(PY) -->
         <%
    	request.setCharacterEncoding("euc-kr");
		int version = Integer.parseInt(request.getParameter("version"));
		System.out.println("PYRoom = version:"+version);
    	%>

    <div class="d-flex justify-content-left row col-sm-12 p-0 m-0" style="width: 100%; height: 100%; padding: 10%; margin-top:20%">
        <!-- left page -->
        <div class="col-sm-2 p-0 m-0" style="height: 70%; width:100%; margin-top:20%">
        <!-- PYHeader -->
         <header >
          <div style="background-color: white; text-align:center;">
              <div class="menu" style="text-align:center; padding-right:15%;" >
                <div><a class="menubtn menu-btn" menu-data="waiting">대기실</a>
                <a class="menubtn menu-btn" menu-data="consult">상담실</a>
                <a class="menubtn menu-btn" menu-data="operating">교정 진료실</a>
                <a class="menubtn menu-btn" menu-data="disinfection">수술실</a>
                <a class="menubtn menu-btn" menu-data="treatment">소독실</a>
                <a class="menubtn menu-btn" menu-data="operating">진료실</a>
                <a class="menubtn menu-btn" menu-data="storage">수납실</a>
                <c:set var="version" value="<%=version%>" scope="session"/>
			  <c:if test="${version != '50'}">
			     <div><a class="menubtn menu-btn" menu-data="storage">가공실</a></div>
			  </c:if>
			  <c:if test="${version > '65'}">
			     <div><a class="menubtn menu-btn" menu-data="storage">메이크업실</a></div>
			  </c:if>
              </div>
          </div>
          </div>
      </header>
        </div>
        <!-- center page -->
        <div class="col-sm-6 p-0 m-0" style="height: 70%; width:100%; position: relative; margin-left:10%; padding-top: 10%;">
         <!-- PYRoom Image -->
         <img id="PYimg" src="https://cdn-bhnll.nitrocdn.com/gSDMXibcJluvzIippFBvhCZIaoOxCvih/assets/static/optimized/rev-ccf470e/wp-content/uploads/handsome-study-interior-design-houston.png"
          width="100%" height="90%" usemap="#PYRoom" alt="" />
          <!-- content -->
          <div>
          <br/>
          실용성과 스타일을 동시에 더하다<br/>
          치과 공간 용도와 치과의사 의도를 잘 이해하고 이를 바탕으로 디자인과 설계 되었습니다.  치과 규모, 진료과목, 운영방식에 따라 최적의 공간 디자인을 선보이며, 고품질의 빠른 시공을 자랑합니다.
          의료진 동선 분석, 최적의 체어 수, 레이아웃을 제시하고 진료실, 대기실, 수술실, 상담실, 영상실, 기계실, 직원실 등 모든 공간을 대상으로 조형 연구를 진행하고 있습니다. 
          이를 통해 심미성과 실용성, 내구성을 두루 갖춘 최적의 진료 환경을 선보이며, 고품질 치과 인테리어 디자인으로 명성을 이어가고 있습니다.
          </div>
          	
          
         <!-- Image Tag -->
         <!-- <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 37vh; left: 7vw;" product-data="unit-k3000b" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 20vw;" product-data="unit-k5000b" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 40vw; " product-data="unit-s2100z" onclick="changeContent()"></div>
       -->   


       <script type="text/javascript">
            $(document).ready(function(){
            	/* PYHeader - click menu-btn change image */
                $(".menu-btn").on('click', function(e){
                e.target.getAttribute("menu-data");
                var menu = e.target.getAttribute("menu-data");
                    console.log("${pageContext.request.contextPath }/resources/images/pickPY/"+ menu +"1Room.png");
                    $("#PYimg").attr("src", "${pageContext.request.contextPath }/resources/images/pickPY/"+ menu +"1Room.png");
                    
                });
                /* Get ProductName form ImageTag */
                $(".furniture").on('click', function(e){
                	var product = e.target.getAttribute('product-data');
                	console.log(product);
                });
                /* blankPage load */
                $("#div1").load("blankInfo?version="+<%=version%>);
            });
            
            
            
            </script>
      </div>
       <div class="col-sm-4 p-0 m-0" >
		<div id="div1" style="height:70%; width:100% ">
	
		</div>
          </div>
		</div>


</body>

</html>

