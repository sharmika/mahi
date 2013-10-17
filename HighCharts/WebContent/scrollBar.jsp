<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

<script type="text/javascript" src="js/exporting.js"></script>
<script type="text/javascript" src="js/usdeur.js"></script>
<script type="text/javascript" src="js/highstock.js"></script>
<script>
$(function() {
	$('#container').highcharts('StockChart', {
	    
	    chart: {
	    },
	    scrollbar: {
			barBackgroundColor: 'gray',
			barBorderRadius: 7,
			barBorderWidth: 0,
			buttonBackgroundColor: 'gray',
			buttonBorderWidth: 0,
			buttonArrowColor: 'yellow',
			buttonBorderRadius: 7,
			rifleColor: 'yellow',
			trackBackgroundColor: 'white',
			trackBorderWidth: 1,
			trackBorderColor: 'silver',
			trackBorderRadius: 7
	    },
	    
	    
	    rangeSelector: {
	    	buttonTheme: { // styles for the buttons
	    		fill: 'none',
	    		stroke: 'none',
	    		'stroke-width': 0,
	    		r: 8,
	    		style: {
	    			color: '#039',
	    			fontWeight: 'bold'
	    		},
	    		states: {
	    			hover: {
	    			},
	    			select: {
	    				fill: '#039',
	    				style: {
	    					color: 'white'
	    				}
	    			}
	    		}
	    	},
	    	inputStyle: {
	    		color: '#039',
	    		fontWeight: 'bold'
	    	},
	    	labelStyle: {
	    		color: 'silver',
	    		fontWeight: 'bold'
	    	},
	    	selected: 1
	    },
	    
	    
	    series: [{
	        name: 'USD to EUR',
	        data: usdeur
	    }]
	});
});
</script>
</head>
<body>
<div id="container" style="height: 400px; min-width: 600px"></div>
</body>
</html>