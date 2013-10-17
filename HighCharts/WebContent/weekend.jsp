<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-more.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script>
	$(function() {
		$('#container')
		.highcharts(
				{
					chart : {
								renderTo : 'container',
								defaultSeriesType : 'spline',
								ignoreHiddenSeries : false
							},
							xAxis : {
								categories : [ 'Jan', 'Feb', 'Mar', 'Apr',
										'May', 'Jun', 'Jul', 'Aug', 'Sep',
										'Oct', 'Nov', 'Dec' ],

								plotBands : [ {
									color : '#FCFFC5',
									from : 4.5,
									to : 7.5,
									id : 'plotband-1'
								} ]
							},

							series : [ {
								data : [ 29.9, 71.5, 106.4, 129.2, 144.0,
										176.0, 135.6, 148.5, 216.4, 194.1,
										95.6, 54.4 ]
							} ]
						});

		// button action
		$('#button').click(function() {
			var chart = $('#container').highcharts();
			chart.xAxis[0].removePlotBand('plotband-1');
		});
	});
</script>
</head>
<body>
<div id="container" style="height: 400px"></div>
<button id="button">Remove plot band</button>
</body>
</html>