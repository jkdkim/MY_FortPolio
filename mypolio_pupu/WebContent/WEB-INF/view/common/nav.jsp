<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
h3 {
	padding: 15px;
	margin: 10px;
}

.chart {
	background-color: transparent;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
	display: inline-block;
	padding: .5em .75em; /* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

.filebox .upload-display { /* 이미지가 표시될 지역 */
	margin-bottom: 5px;
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}

.filebox .upload-thumb-wrap { /* 추가될 이미지를 감싸는 요소 */
	display: inline-block;
	width: 54px;
	padding: 2px;
	vertical-align: middle;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

.filebox .upload-display img { /* 추가될 이미지 */
	display: block;
	max-width: 100%;
	width: 100% \9;
	height: auto;
}
</style>


<h3>Select Menu</h3>

<nav style="width: 500">
	<div class="container-fluid">
		<ul class="nav nav-pills nav-stacked">
			<li class=" btn-success  "><a href="/main" style="color: white;">Pupu</a></li>
			<li class="dropdown"><a class="dropdown-toggle" href="/main">Home</a>

			</li>
		
			<li><a href="/user/top3">BEST TOP3</a></li>
			<li><a id="chart">Chart</a></li>
			<li><a id="js1">Category</a></li>
			<li><a href="/cate?catesel=의류" id="port2"
				style="display: none;">의류</a></li>
			<li><a href="/cate?catesel=여행" id="port3"
				style="display: none;">여행</a></li>
			<li><a href="/cate?catesel=취미" id="port4"
				style="display: none;">취미</a></li>
			<li><a href="/cate?catesel=자유" id="port5"
				style="display: none;">자유</a></li>


		</ul>
	</div>
</nav>
<script>
	$("#js1").click(function() {
		$("#port2").fadeToggle();
		$("#port3").fadeToggle();
		$("#port4").fadeToggle();
		$("#port5").fadeToggle();
	});
</script>
<!-- 80% size Modal -->
<div class="modal fade" id="mychartmodal" tabindex="-1" role="dialog"
	aria-labelledby="my80sizeModalLabel">
	<div class="" role="document">
		<div class="">
			<div class="" id="myModalLabel">
				<div class="chart" id="piechart_3d"
					style="width: 900; height: 500px;"></div>
			</div>

		</div>
	</div>
</div>


<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['의류',     ${t1}],
          ['여행',     ${t2}],
          ['취미',  ${t3}],
          ['자유', ${t4}],
        ]);

        var options = {
          title: '카테고리',
          width : 700,
      	  height : 500,
      	 
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
<script>
$("#chart").click(function() {
	$("#mychartmodal").modal();
});
</script>

