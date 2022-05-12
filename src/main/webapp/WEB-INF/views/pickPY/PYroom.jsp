<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=1280, user-scalable=yes, target-densitydpi=device-dpi" />
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="js/jquery.easing.min.js"></script>
        <script type="text/javascript"
            src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainheader.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
    </head>

    <body>
        <%@ include file="/WEB-INF/views/common/mainheader.jsp" %>
            <!-- Get PYRoom version(PY) -->
            <% request.setCharacterEncoding("euc-kr"); int version=Integer.parseInt(request.getParameter("version"));
                System.out.println("PYRoom=version:"+version); %>
                <div class="d-flex justify-content-left row col-sm-12 p-0 m-0"
                    style="width: 100%; height: 100%; padding: 10%; margin-top:20%">
                    <!-- left page -->
                    <div class="col-sm-2 p-0 m-0" style="height: 70%; width:100%; margin-top:20%">
                        <!-- PYHeader -->
                        <header>
                            <div style="background-color: white; text-align:center;">
                                <div class="menu" style="text-align:center; padding-right:15%;">
                                    <div><a class="menubtn menu-btn" menu-data="waiting">대기실</a>
                                        <a class="menubtn menu-btn" menu-data="consult">상담실</a>
                                        <a class="menubtn menu-btn" menu-data="operating">교정 진료실</a>
                                        <a class="menubtn menu-btn" menu-data="disinfection">수술실</a>
                                        <a class="menubtn menu-btn" menu-data="treatment">소독실</a>
                                        <a class="menubtn menu-btn" menu-data="operating">진료실</a>
                                        <a class="menubtn menu-btn" menu-data="storage">수납실</a>
                                        <c:set var="version" value="<%=version%>" scope="session" />
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
                    <div class="col-sm-6 p-0 m-0"
                        style="height: 70%; width:100%; position: relative; padding-top: 10%;">

                        <div style="width: 900px; height: 700px;">
                            <div style="position:absolute;">
                                <div style="position: relative;">
                                    <img id="" class="map"
                                        src="https://cdn-bhnll.nitrocdn.com/gSDMXibcJluvzIippFBvhCZIaoOxCvih/assets/static/optimized/rev-ccf470e/wp-content/uploads/handsome-study-interior-design-houston.png"
                                        width="900px" height="600px" border="0" usemap="#Map">
                                    <map name="Map">
                                        <area href="#" title="의자" shape="poly"
                                            data-maphilight='{"strokeWidth":2,"fillOpacity":0.3}'
                                            coords="23,345,24,544,106,558,157,513,143,454,137,374,70,390,54,346"
                                            class="furniture" product-data="wood-chair">
                                        <area href="#" title="책장" shape="poly"
                                            data-maphilight='{"strokeWidth":2,"fillOpacity":0.3}'
                                            coords="766,95,885,32,885,560,767,491,766,298" class="furniture"
                                            product-data="bookshelf">
                                        <area href="#" title="책상" shape="poly"
                                            data-maphilight='{"strokeWidth":2,"fillOpacity":0.3}'
                                            coords="294,367,265,391,264,580,284,421,615,418,624,564,637,394,615,363"
                                            class="furniture" product-data="wood-table">
                                    </map>
                                </div>
                                <br />
                            실용성과 스타일을 동시에 더하다<br />
                            치과 공간 용도와 치과의사 의도를 잘 이해하고 이를 바탕으로 디자인과 설계 되었습니다. 치과 규모, 진료과목, 운영방식에 따라 최적의 공간 디자인을 선보이며,
                            고품질의 빠른 시공을 자랑합니다.
                            의료진 동선 분석, 최적의 체어 수, 레이아웃을 제시하고 진료실, 대기실, 수술실, 상담실, 영상실, 기계실, 직원실 등 모든 공간을 대상으로 조형 연구를 진행하고
                            있습니다.
                            이를 통해 심미성과 실용성, 내구성을 두루 갖춘 최적의 진료 환경을 선보이며, 고품질 치과 인테리어 디자인으로 명성을 이어가고 있습니다.<br />
                            <a href="${pageContext.request.contextPath}/portfolio/portfolio">더 많은 사진 보러가기</a>
                            </div>
                            <div style="position:absolute;">
                                <div style="position: relative;">
                                    <img id="PYimg" class="map"
                                        src="https://cdn-bhnll.nitrocdn.com/gSDMXibcJluvzIippFBvhCZIaoOxCvih/assets/static/optimized/rev-ccf470e/wp-content/uploads/handsome-study-interior-design-houston.png"
                                        width="0" height="0" border="0" >
                                </div>
                            </div>
                            
                            
                       
                        </div>
                    </div>
                    <div class="col-sm-4 p-0 m-0">
                        <div id="div1" style="height:70%; width:100%; padding: 0 1em 0 5em;">

                        </div>
                    </div>

                </div>

                <script type="text/javascript">
                    $(function () {
                        $('.map').maphilight();
                    });
                </script>
                <script type="text/javascript">
                    $(document).ready(function () {

                        /* PYHeader - click menu-btn change image */
                        $(".menu-btn").on('click', function (e) {


                            e.target.getAttribute("menu-data");
                            var menu = e.target.getAttribute("menu-data");
                            /*  $(".PYimg p img")[0].src += "?width=500"; */
                            var img = $("#PYimg");

                            $("#PYimg").attr("src", "${pageContext.request.contextPath }/resources/images/pickPY/" + menu + "Room.png?" + Math.random());
                            
                            $("#PYimg").css('height','600');
                            $("#PYimg").css('width','900');
                            
                            if(menu == "consult"){
                            	 $("#PYimg").css('height','0');
                            	$("#PYimg").css('width','0');
                            }
                            
                            /* $('.map').maphilight();  */
                            /* img.src = "${pageContext.request.contextPath }/resources/images/pickPY/" + menu + "Room.png";
                            console.log(img); */
                        });
                        /* Get ProductName form ImageTag */
                        $(".furniture").on('click', function (e) {
                            var product = e.target.getAttribute('product-data');
                            $("#div1").load("productInfo?productId=" + product);
                        });
                        /* right load */
                        $("#div1").load("blankInfo?version=" +<%=version %>);

                    });



                </script>
		<a href="${pageContext.request.contextPath }/pickPY/content"><img style="position:fixed; bottom: 1em; left: 1em; width: 3em;" src="${pageContext.request.contextPath }/resources/images/pre.png" /></a>
		<a href="${pageContext.request.contextPath }/question/questionIndex"><img style="position:fixed; bottom: 1em; right: 1em; width: 3em;" src="${pageContext.request.contextPath }/resources/images/next.png" /></a>
    </body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </html>