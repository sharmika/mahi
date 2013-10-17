<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

<script type="text/javascript">
	$(function() {
		 ranges = [ [1372636800000, 5100.3, 11700.3], [1372723200000, 5100.3, 10700.3],
		           [1372809600000, 5100.3, 10700.3], [1372896000000, 5100.3, 10700.3],
		           [1372982400000, 4700.3, 10700.3], [1373068800000, 4500.3, 10700.3],
		           [1373155200000, 5100.3, 11000.3], [1373241600000, 5100.3, 10700.3],
		           [1373328000000, 5700.3, 10500.3],  [1373414400000, 5700.3, 10700.3 ],
		           [1373500800000, 5100.3, 10800.3], [1373587200000, 5100.3, 10900.3 ],
		           [1373673600000, 5100.3, 10700.3], [1373760000000, 5100.3, 11200.3 ],
		           [1373846400000, 5100.3, 11500.3], [1373932800000, 5100.3, 11700.3 ],
		           [1374019200000, 6300.3, 11500.3],  [1374105600000, 6500.3, 11300.3 ],
		           [1374192000000, 6500.3, 10700.3],  [1374278400000, 6300.3, 10700.3 ],
		           [1374364800000, 5900.3, 10600.3],  [1374451200000, 5700.3, 10700.3 ],
		           [1374537600000, 6100.3, 10800.3], [1374624000000, 6100.3, 10800.3 ],
		           [1374710400000, 6600.3, 10900.3],  [1374796800000, 6100.3, 10700.3 ],
		           [1374883200000, 5700.3, 10700.3],  [1374969600000, 5700.3, 10700.3 ],
		           [1375056000000, 6100.3, 10800.3],  [1375142400000, 6100.3, 10700.3 ],
		           [1375228800000, 6100.3, 10800.3 ]];

		averages = [  [1372636800000, 5100.3], [1372723200000, 5500.3],
					  [1372809600000, 6100.3], [1372896000000, 7100.3], 
					  [1372982400000, 5100.3], [1373068800000, 4100.3], 
					  [1373155200000, 5100.3], [1373241600000, 8100.3], 
					  [1373328000000, 6700.3], [1373414400000, 6700.3],
					  [1373500800000, 7100.3], [1373587200000, 9100.3], 
					  [1373673600000, 5100.3], [1373760000000, 5500.3], 
					  [1373846400000, 6100.3], [1373932800000, 7100.3], 
					  [1374019200000, 5100.3], [1374105600000, 4100.3],
					  [1374192000000, 5100.3], [1374278400000, 8100.3], 
					  [1374364800000, 6700.3], [1374451200000, 6700.3], 
					  [1374537600000, 7100.3], [1374624000000, 9100.3],
					  [1374710400000, 5100.3], [1374796800000, 5500.3], 
					  [1374883200000, 6100.3], [1374969600000, 7100.3], 
					  [1375056000000, 7300.3], [1375142400000, 7400.3],
					  [1375228800000, 7500.3]];
		
		Stack1 = [    [1372636800000,4900.3], [1372723200000,4900.3],
		              [1372809600000,4900.3], [1372896000000,4900.3], 
		              [1372982400000,4900.3], [1373068800000,4900.3],
		              [1373155200000,4900.3], [1373241600000,4900.3], 
		              [1373328000000,4900.3], [1373414400000,4900.3], 
		              [1373500800000,4900.3], [1373587200000,4900.3], 
		              [1373673600000,4900.3], [1373760000000,4900.3], 
		              [1373846400000,4900.3], [1373932800000,4900.3], 
		              [1374019200000,4900.3], [1374105600000,4900.3],
		              [1374192000000,4900.3], [1374278400000,4900.3], 
		              [1374364800000,4900.3], [1374451200000,4900.3], 
		              [1374537600000,4900.3], [1374624000000,4900.3],
		              [1374710400000,4900.3], [1374796800000,4900.3],
		              [1374883200000,4900.3], [1374969600000,4900.3],
		              [1375056000000,4900.3], [1375142400000,4900.3],
		              [1375228800000,4900.3]];
		Stack2 = [ [ 1372636800000, 5200.3 ], [ 1372723200000, 5200.3 ],
				[ 1372809600000, 5200.3 ], [ 1372896000000, 5200.3 ],
				[ 1372982400000, 5200.3 ], [ 1373068800000, 5200.3 ],
				[ 1373155200000, 5200.3 ], [ 1373241600000, 5200.3 ],
				[ 1373328000000, 5200.3 ], [ 1373414400000, 5200.3 ],
				[ 1373500800000, 5200.3 ], [ 1373587200000, 5200.3 ],
				[ 1373673600000, 5200.3 ], [ 1373760000000, 5200.3 ],
				[ 1373846400000, 5200.3 ], [ 1373932800000, 5200.3 ],
				[ 1374019200000, 5200.3 ], [ 1374105600000, 5200.3 ],
				[ 1374192000000, 5200.3 ], [ 1374278400000, 5200.3 ],
				[ 1374364800000, 5200.3 ], [ 1374451200000, 5200.3 ],
				[ 1374537600000, 5200.3 ], [ 1374624000000, 5200.3 ],
				[ 1374710400000, 5200.3 ], [ 1374796800000, 5200.3 ],
				[ 1374883200000, 5200.3 ], [ 1374969600000, 5200.3 ],
				[ 1375056000000, 5200.3 ], [ 1375142400000, 5200.3 ],
				[ 1375228800000, 5200.3 ] ];
		line = [ [ 1372636800000, 13500.0 ], [ 1372723200000, 14000.3 ],
				[ 1372809600000, 12000.3 ], [ 1372896000000, 13500.3 ],
				[ 1372982400000, 13500.3 ], [ 1373068800000, 12500.3 ],
				[ 1373155200000, 14000.3 ], [ 1373241600000, 13500.3 ],
				[ 1373328000000, 13800.3 ], [ 1373414400000, 13600.3 ],
				[ 1373500800000, 13700.3 ], [ 1373587200000, 13400.3 ],
				[ 1373673600000, 14000.0 ], [ 1373760000000, 9000.3 ],
				[ 1373846400000, 13000.3 ], [ 1373932800000, 13500.3 ],
				[ 1374019200000, 5000.3 ], [ 1374105600000, 13500.3 ],
				[ 1374192000000, 14000.3 ], [ 1374278400000, 13500.3 ],
				[ 1374364800000, 13800.3 ], [ 1374451200000, 13600.3 ],
				[ 1374537600000, 13700.3 ], [ 1374624000000, 13400.3 ],
				[ 1374710400000, 14000.0 ], [ 1374796800000, 9000.3 ],
				[ 1374883200000, 13000.3 ], [ 1374969600000, 13500.3 ],
				[ 1375056000000, 13500.3 ], [ 1375142400000, 13500.3 ],
				[ 1375228800000, 13500.3 ] ];

		$('#container').highcharts({
			chart : {
			//zoomType : 'xy'
			},
			title : {
				text : 'Position'
			},
			subtitle : {
			//text : 'Source: WorldClimate.com'
			},

			legend : {
				align : 'right',
				verticalAlign : 'top',
				x : 0,
				y : 100
			},
			xAxis : [ {
				type : "datetime",
				title : {
					text : 'Day Of Month',
					style : {
						color : '#89A54E'
					}
				},

				plotBands : [ { // mark the Holiday
					color : '#FCFFC5',
					from : 4,
					to : 4,
					zIndex : 3,
					label : {
						text : 'Holiday',
						rotation : 90,
						textAlign : 'left'
					}
				}, { // mark the weekend
					color : '#FCFFC5',
					from : 6,
					to : 7,
					zIndex : 3,
					label : {
						text : 'Weekend',
						rotation : 90,
						textAlign : 'left'
					}
				}, ],
				dateTimeLabelFormats : {
					day : '%e',
				},
				gridLineWidth : 1,
				lineColor : '#000',
				tickColor : '#000',
				tickInterval : 24 * 3600 * 1000,
				min : 1372636800000,
				max : 1375228800000,
				plotBands : [ { // mark the Holiday
					color : '#FCFFC5',
					from : 1372896000000,
					to : 1372896000000,
					zIndex : 3,
					label : {
						text : 'Holiday',
						rotation : 90,
						textAlign : 'left'
					}
				}, { // mark the weekend
					color : '#FCFFC5',
					from : 1373068800000,
					to : 1373155200000,
					zIndex : 3,
					label : {
						text : 'Weekend',
						rotation : 90,
						textAlign : 'left'
					}
				}, { // mark the weekend
					color : '#FCFFC5',
					from : 1373673600000,
					to : 1373760000000,
					zIndex : 3,
					label : {
						text : 'Weekend',
						rotation : 90,
						textAlign : 'left'
					}
				}, { // mark the weekend
					color : '#FCFFC5',
					from : 1374278400000,
					to : 1374364800000,
					zIndex : 3,
					label : {
						text : 'Weekend',
						rotation : 90,
						textAlign : 'left'
					}
				}, { // mark the weekend
					color : '#FCFFC5',
					from : 1374883200000,
					to : 1374969600000,
					zIndex : 3,
					label : {
						text : 'Weekend',
						rotation : 90,
						textAlign : 'left'
					}
				} ]
			} ],
			yAxis : [ { // Primary yAxis
				minorTickInterval : 'auto',
				lineColor : '#000',
				lineWidth : 1,
				tickColor : '#000',
				labels : {
					format : '{value}',
					style : {
						color : '#89A54E'
					}
				},
				title : {
					text : 'Megawatts',
					style : {
						color : '#89A54E'
					}
				},
				min : 4000,
				max : 13000
			} ],
			plotLines : [ {
				value : 0,
				width : 1,
				color : '#808080'
			} ],
			tooltip : {
				valueSuffix : 'MW'
			},
			/* 
			tooltip : {
				shared : true,
				 valueSuffix: 'MW'
			}, */
			/* plotOptions : {
				column : {
					stacking : 'normal',
				},
				spline : {
					lineWidth : 4,
					states : {
						hover : {
							lineWidth : 5
						}
					},
					marker : {
						enabled : false
					}
				}, 

			},*/
			series : [ {
								type : 'column',
								name : 'Stack1',
								data : Stack1,
								color : 'green',
								pointWidth : 15,
								cursor: 'pointer',
								events: {
				                    click: function(event) {
				                        //alert(this.name);
				                        test();
				                        }
								}

							}
							,{
				type : 'column',
				name : 'Stack2',
				data : Stack2,
				color : 'pink',
				pointWidth : 45,
				events : {
					click : function(event) {
						//alert(this.name);
						test();
					}
				}

			}, {
								type : 'spline',
								name : 'Area',
								data : averages,
								lineWidth : 1,
								zIndex : 1,
								marker : {
									fillColor : 'white',
									lineWidth : 2,
									lineColor : Highcharts.getOptions().colors[0]
								},
						
							}, {
								name : 'Range',
								data : ranges,
								type : 'arearange',
								lineWidth : 0,
								linkedTo : ':previous',
								color : Highcharts.getOptions().colors[0],
								fillOpacity : 0.3,
								zIndex : 0,
								events: {
				                    click: function(event) {
				                        //alert(this.name);
				                        test();
				                        }
								}
							}, 
							{
								type : 'spline',
								name : 'Line',
								data : line,
								lineWidth : 1,
								color : 'red',

			} ]
		});
	});
</script>
<!-- <script>
function test(){
	//alert('test');
	$(function() {
		ranges = [ [1372636800000, 6100.3, 9700.3], [1372723200000, 6100.3, 9500.3],
		           [1372809600000, 6200.3, 9400.3], [1372896000000, 6100.3, 9200.3],
		           [1372982400000, 5700.3, 9000.3], [1373068800000, 5500.3, 8700.3],
		           [1373155200000, 5400.3, 8000.3], [1373241600000, 5500.3, 8100.3],
		           [1373328000000, 5700.3, 8200.3], [1373414400000, 5700.3, 8300.3 ],
		           [1373500800000, 6000.3, 8500.3], [1373587200000, 6400.3, 9000.3 ],
		           [1373673600000, 6700.3, 10700.3], [1373760000000, 6900.3, 11700.3 ],
		           [1373846400000, 7000.3, 11500.3], [1373932800000, 7100.3, 11200.3 ],
		           [1374019200000, 7300.3, 11000.3],  [1374105600000, 8000.3, 11700.3 ],
		           [1374192000000, 7100.3, 11700.3],  [1374278400000, 7500.3, 11400.3 ],
		           [1374364800000, 7700.3, 10700.3],  [1374451200000, 7300.3, 10400.3 ],
		           [1374537600000, 7400.3, 10000.3], [1374624000000, 7800.3, 9700.3 ]];

		averages = [  [1372636800000,8200.0],[1372723200000,7500.3], 
				       [1372809600000,7100.3],[1372896000000,6900.3],
				       [1372982400000,6500.3],[1373068800000,6100.3], 
				       [1373155200000,5300.3],[1373241600000,5500.3], 
				       [1373328000000,5700.3],[1373414400000,5900.3], 
				       [1373500800000,6000.3],[1373587200000,6800.3],
				       [1373673600000,8000.0],[1373760000000, 10100.3], 
				       [1373846400000,10200.3],[1373932800000, 10500.3],
				       [1374019200000,10500.3],[Date.UTC(2013,  6, 18),10700.3], 
				       [1374192000000,9800.3],[1374278400000,9400.3], 
				       [1374364800000,9100.3],[1374451200000,9300.3],
				       [1374537600000,9000.3],[1374624000000,8500.3]];
		
		Stack1 = [ [1372636800000,8000.3], [1372723200000,8000.3],
		              [1372809600000,8000.3], [1372896000000,8000.3], 
		              [1372982400000,8000.3], [1373068800000,8000.3],
		              [1373155200000,8000.3], [1373241600000,10000.3], 
		              [1373328000000,10000.3], [1373414400000,10000.3], 
		              [1373500800000,10000.3], [1373587200000,10000.3], 
		              [1373673600000,10000.3], [1373760000000,10000.3], 
		              [1373846400000,10000.3], [1373932800000,10000.3], 
		              [1374019200000,10000.3], [1374105600000,10000.3],
		              [1374192000000,10000.3], [1374278400000,10000.3], 
		              [1374364800000,10000.3], [1374451200000,10000.3], 
		              [1374537600000,10000.3], [1374624000000,8000.3]];
		
		Stack2 = [[1372636800000,  5200.3], [1372723200000,5200.3],
		              [1372809600000,5200.3], [1372896000000,5200.3], 
		              [1372982400000,5200.3], [1373068800000,5200.3],
		              [1373155200000,5200.3], [1373241600000,5200.3], 
		              [1373328000000,5200.3], [1373414400000,5200.3], 
		              [1373500800000,5200.3], [1373587200000,5200.3], 
		              [1373673600000,5200.3], [1373760000000,5200.3], 
		              [1373846400000,5200.3], [1373932800000,5200.3], 
		              [1374019200000,5200.3], [1374105600000,5200.3],
		              [1374192000000,5200.3], [1374278400000,5200.3], 
		              [1374364800000,5200.3], [1374451200000,5200.3], 
		              [1374537600000,5200.3], [1374624000000,5200.3]];
		
		line=[ [1372636800000,9000.0],[1372723200000,8000.3], 
		       [1372809600000,7700.3],[1372896000000,7500.3],
		       [1372982400000,7000.3],[1373068800000,6500.3], 
		       [1373155200000,6300.3],[1373241600000,6500.3], 
		       [1373328000000,6700.3],[1373414400000,7000.3], 
		       [1373500800000,8700.3],[1373587200000,10000.3],
		       [1373673600000,11000.0],[1373760000000, 12000.3], 
		       [1373846400000,13000.3],[1373932800000, 13500.3],
		       [1374019200000,13500.3],[Date.UTC(2013,  6, 18),13300.3], 
		       [1374192000000,13000.3],[1374278400000,12800.3], 
		       [1374364800000,12600.3],[1374451200000,12000.3],
		       [1374537600000,10000.3],[1374624000000,9400.3]];

		$('#container').highcharts(
				{
					chart : {
					//zoomType : 'xy'
					},
					title : {
						text : 'Position'
					},
					subtitle : {
					//text : 'Source: WorldClimate.com'
					},
					xAxis : [{ // Primary xAxis

						type: "datetime",
						dateTimeLabelFormats: {  
							day: '%e' ,  
							},
						tickInterval: 24 * 3600 * 1000,
					    min: 1372636800000,
					    max: 1374624000000
					} ],
					yAxis : [ { // Primary yAxis
						labels : {
							format : '{value}',
							style : {
								color : '#89A54E'
							}
						},
						title : {
							text : 'Megawatts',
							style : {
								color : '#89A54E'
							}
						},
						min : 4000,
						max : 13000
					} ],
					tooltip : {
			                shared : true,
					},
					plotOptions : {/* 
						column : {
							stacking : 'normal',
						}, */
						spline : {
							lineWidth : 4,
							states : {
								hover : {
									lineWidth : 5
								}
							},
							marker : {
								enabled : false
							}
						},

					},
					series : [ {
						type : 'column',
						name : 'Stack1',
						data : Stack1,
						color : 'lightgreen',
						pointWidth : 25,

					}/* 
					,{
						type : 'column',
						name : 'Stack2',
						data : Stack2,
						color : 'pink',
						pointWidth : 25,
						events: {
		                    click: function(event) {
		                        alert(this.name);
		                        test();
		                        }
						}

					} */
					, {
						type : 'spline',
						name : 'Area',
						data : averages,
						lineWidth : 1,
						zIndex : 1,
						marker : {
							fillColor : 'white',
							lineWidth : 2,
							lineColor : Highcharts.getOptions().colors[0]
						},
				
					}, {
						name : 'Range',
						data : ranges,
						type : 'arearange',
						lineWidth : 0,
						linkedTo : ':previous',
						color : Highcharts.getOptions().colors[0],
						fillOpacity : 0.3,
						zIndex : 0,
						events: {
		                    click: function(event) {
		                        //alert(this.name);
		                        test();
		                        }
						}
					},{
						type : 'spline',
						name : 'Line',
						data : line,
						lineWidth : 1,
						color : 'red',

					} ]
				});
	});
}
</script> -->
</head>
<body>
	<script src="js/highcharts.js"></script>
	<script src="js/highcharts-more.js"></script>
	<script src="js/exporting.js"></script>
	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>


</body>
</html>