<!-- 
	1. 방문자
	2. 가장 많이 가입한 학교학생들 TOP
	3. 회원들이 학교 선택할 떄 가장 중요하게 생각하는 요소
	4. 가장 조회수가 높은 검색어 순위

 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/template/own/admin_header.jsp"%>
<%@ include file="/WEB-INF/views/template/own/admin_statistics.jsp"%>

<section style="padding-top: 15px;">
	<div id="chart" style="width: 500px; display: inline-block; margin-left: 250px; margin-top: 20px;"><canvas id="myChart" width="400" height="400">방문자 통계</canvas></div>
	
<!-- 	<div style="display: inline-block;">
		<table class="table" id="reportlistTop" >
		<thead>
			<tr>
				<th>신고aa코드</th>
                 <th>글번호</th>
                 <th>제목</th>
                 <th>내용</th>
                 <th>신고시각</th>
            </tr>
		</thead>

         <tbody id="reportlist"><tr><td>하루 또 하루가 또 새로워</td></tr></tbody>

      </table>
	</div> -->
</section>


<script>
var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'doughnut',

    // The data for our dataset
    data: {
        labels: ['성균관대학교', '대덕소프트웨어마이스터고등학교', '서울대학교', '세화여자고등학교', '무학여자고등학교'],
        datasets: [{
            label: '',
            backgroundColor: ['rgb(255, 0, 0)', 'rgb(255, 50, 0)', 'rgb(255, 255, 0)', 'rgb(0, 255, 255)', 'rgb(0, 0, 255)'],
            borderColor: ['rgb(255, 0, 0)', 'rgb(255, 50, 0)', 'rgb(255, 255, 0)', 'rgb(0, 255, 255)', 'rgb(0, 0, 255)'],
            data: [30, 21, 5, 8, 20]
        }]
    },

    // Configuration options go here
    options: {}
});
</script>

<%@ include file="/WEB-INF/views/template/own/admin_sidebar.jsp"%>