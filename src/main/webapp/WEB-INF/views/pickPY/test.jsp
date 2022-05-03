<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>jquery DOM</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body>
  <div class="d-flex row col-sm-12 p-0 m-0" style="width: 100%; height: 100%;">
    <div class="col-sm-9 p-0 m-0" style="height: 100%; width:100%; position: relative;">
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 37vh; left: 7vw;" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 20vw;" onclick="changeContent()"></div>
         <div class="furniture" style="border-radius: 2rem; height: 2rem; width: 2rem; background-color: #ffb440; position: absolute; top: 60vh; left: 40vw; " onclick="changeContent()"></div>
         <header >
    <img
      id="img"
      src="https://cdn-bhnll.nitrocdn.com/gSDMXibcJluvzIippFBvhCZIaoOxCvih/assets/static/optimized/rev-ccf470e/wp-content/uploads/handsome-study-interior-design-houston.png"
      width="100%"
      height="90%"
      usemap="#PYRoom"
      alt=""
    />
    <br />
    <div style="background-color: white">
      <div class="menu" style="height: max-content">
        <div class="menu-btn" menu-data="waiting">대기실</div>
        <div class="menu-btn" menu-data="consult">상담실</div>
        <div class="menu-btn" menu-data="operating">교정 진료실</div>
        <div class="menu-btn" menu-data="disinfection">수술실</div>
        <div class="menu-btn" menu-data="treatment">소독실</div>
        <div class="menu-btn" menu-data="operating">진료실</div>
        <div class="menu-btn" menu-data="storage">수납실</div>
      </div>
    </div>
    </header>
    <script type="text/javascript">
    $(document).ready(function(){
        $(".menu-btn").on('click', function(e){
        e.target.getAttribute("menu-data");
        var menu = e.target.getAttribute("menu-data");
            console.log(e.target.getAttribute("menu-data"));
            $("#img").attr("src", "${pageContext.request.contextPath }/resources/images/pickPY/"+ menu +"Room.png");
            
        });
    });
    </script>
    <div class="col-sm-3 p-0 m-0" >
                <div class="card mb-2 box-shadow" style=" height: 100%;">
                    <div class="card-body my-5">
                      <h1 class="card-title pricing-card-title " style="text-align: center; font-weight: bold;"><font color="black" size="6">50PY 상담실 <br/></font></h1>
                      <ul class="list-unstyled mt-6 mb-4 " style="margin: 4rem; text-align: center;" >
                        <li id="furnitureContent">가구에 마우스를 올려<br/> 상세 정보를 확인해보세요</li>
                        <div id="productColor" class="row" style="height: 50px; width: 50px;"></div>
                         <div id = "productInfo"></div>
                      </ul>
                      <div style="bottom: 0px; position: absolute; bottom: 1vh; width: 90%; padding-right: 2rem; width: 100%; ">
                        <a type="button" class="btn btn-lg btn-block button" style="background-color:black; border-radius:2rem; font-weight: bold;" href="customerSupport""><font color="white" size="4">문의</font></a>
                        <div class="m-2" style="text-align: center;"><font size="1" color="gray">상품 디자인은 실제와 다를 수 있습니다</font></div>
                    </div>
                      </div>
                  </div>
            </div>
    </div>
  </body>
</html>
