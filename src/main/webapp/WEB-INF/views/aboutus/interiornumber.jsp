<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!-- interior number  -->
  <div>
    <div style="width:100%; postion:relative; display: flex;
    justify-content: center;
    align-items: center; top:0;">
      <div class="title" style="position: absolute; left: 5%; color:white; ">OSSTEM INTERIOR</div>
      <img
        src="https://t1.daumcdn.net/thumb/R720x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/4ldB/image/Ca3BiJdRVNaFRg_hOAdI2fZXlfw"
        style="width: 50%; object-fit: cover; margin:0;" />

      <div class="row ml-4" style="text-align:center;">
        <div class="col-6 col-md-4"><span class="small-title">치과 인테리어수</span></div>
        <div class="col-6 col-md-4"><span class="small-title">직원수</span></div>
        <div class="col-6 col-md-4"><span class="small-title">수상</span></div>

        <!-- Force next columns to break to new line -->
        <div class="w-100"></div>

        <div class="col-6 col-md-4"><span id="count1" class="display-4"></span></div>
        <div class="col-6 col-md-4"><span id="count2" class="display-4"></span></div>
        <div class="col-6 col-md-4"><span id="count3" class="display-4"></span></div>
      </div>
    </div>
  </div>

  <!-- YEARDATE -->
  <script>
    // number counter animation
    document.addEventListener("DOMContentLoaded", () => {
      function counter(id, start, end, duration) {
        let obj = document.getElementById(id),
          current = start,
          range = end - start,
          increment = end > start ? 1 : -1,
          step = Math.abs(Math.floor(duration / range)),
          timer = setInterval(() => {
            current += increment;
            obj.textContent = current;
            if (current == end) {
              clearInterval(timer);
            }
          }, step);
      }
      counter("count1", 0, 600, 4000); //총 인테리어수
      counter("count2", 100, 35, 2500); // 직원 수
      counter("count3", 0, 20, 3000); // 수상 수
    });
  </script>