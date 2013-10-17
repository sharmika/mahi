<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type='text/javascript' src='//code.jquery.com/jquery-1.9.1.js'></script>

<link rel="stylesheet" type="text/css" href="/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/css/result-light.css" />

<style type='text/css'>
</style>



<script type='text/javascript'>
	         
$(function(){
	var chart = new Highcharts.Chart({

	    chart: {
	        renderTo: 'container'
	    },

	    xAxis: {
	        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
	        min: 6
	    },
	    
	    legend: {
	        verticalAlign: 'top',
	        
	        align: 'right'
	    },
	    
	    scrollbar: {
	        enabled: true
	    },

	    series: [{
	    	type:'column',
	        data: [29.9, 71.5, 106.4, 129.2, 144.0, 400.0, 135.6, 148.5, 600.4, 194.1, 95.6, 900.4]
	    }]
	});

	});

</script>


</head>
<body>
	<script type="text/javascript"
		src="http://code.highcharts.com/stock/highstock.js"></script>

	<div id="container" style=""></div>




</body>


</html>
