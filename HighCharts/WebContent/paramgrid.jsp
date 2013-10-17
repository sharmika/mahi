<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--jQuery dependencies-->
 <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css" />
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>   
 <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
 
 <!--ParamQuery Grid files-->
 <link rel="stylesheet" href="css/pqgrid.min.css" />
 <script type="text/javascript" src="js/pqgrid.min.js"></script>   

 
 <script>
 $(function () {
	    var data = [
	        { rank: 1, company: 'Exxon Mobil', revenues: '339,938.0', profits: '36,130.0' },
	        { rank: 2, company: 'Wal-Mart Stores', revenues: '315,654.0', profits: '11,231.0' },
	        { rank: 3, company: 'Royal Dutch Shell', revenues: '306,731.0', profits: '25,311.0' },
	        { rank: 4, company: 'BP', revenues: '267,600.0', profits: '22,341.0' },
	        { rank: 5, company: 'General Motors', revenues: '192,604.0', profits: '-10,567.0' },
	        { rank: 6, company: 'Chevron', revenues: '189,481.0', profits: '14,099.0' },
	        { rank: 7, company: 'DaimlerChrysler', revenues: '186,106.3', profits: '3,536.3' },
	        { rank: 8, company: 'Toyota Motor', revenues: '185,805.0', profits: '12,119.6' },
	        { rank: 9, company: 'Ford Motor', revenues: '177,210.0', profits: '2,024.0' },
	        { rank: 10, company: 'ConocoPhillips', revenues: '166,683.0', profits: '13,529.0' },
	        { rank: 11, company: 'General Electric', revenues: '157,153.0', profits: '16,353.0' },
	        { rank: 12, company: 'Total', revenues: '152,360.7', profits: '15,250.0' },
	        { rank: 13, company: 'ING Group', revenues: '138,235.3', profits: '8,958.9' },
	        { rank: 14, company: 'Citigroup', revenues: '131,045.0', profits: '24,589.0' },
	        { rank: 15, company: 'AXA', revenues: '129,839.2', profits: '5,186.5' },
	        { rank: 16, company: 'Allianz', revenues: '121,406.0', profits: '5,442.4' },
	        { rank: 17, company: 'Volkswagen', revenues: '118,376.6', profits: '1,391.7' },
	        { rank: 18, company: 'Fortis', revenues: '112,351.4', profits: '4,896.3' },
	        { rank: 19, company: 'Cr�dit Agricole', revenues: '110,764.6', profits: '7,434.3' },
	        { rank: 20, company: 'American Intl. Group', revenues: '108,905.0', profits: '10,477.0' }
	        ];
	 
	    var obj = { width: 700, height: 400, title: "Grid From JSON data", flexHeight: true };
	    obj.colModel = [{ title: "Rank", width: 100, dataType: "integer", dataIndx: "rank" },
	                       { title: "Company", width: 200, dataType: "string", dataIndx: "company" },
	                       { title: "Revenues ($ millions)", width: 150, dataType: "float", align: "right", dataIndx: "revenues" },
	                       { title: "Profits ($ millions)", width: 150, dataType: "float", align: "right", dataIndx: "profits",
	                           render: function (ui) {
	                               var rowData = ui.rowData,
	                                dataIndx = ui.dataIndx,
	                                cellData = rowData[dataIndx],
	                                profits = cellData.replace(",", ""),
	                                revenues = rowData["revenues"].replace(",", "");
	                               if (profits/revenues > 0.1) {
	                                   return "<span style='color:green;'>" + cellData + "</span>";
	                               }
	                               else {
	                                   return "<span style='color:red;'>" + cellData + "</span>";
	                               }
	                           }
	                       }];
	    obj.dataModel = {
	        data: data,
	        location: "local",
	        sorting: "local",
	        paging: "local",
	        curPage: 1,
	        rPP: 10,
	        sortIndx: "revenues",
	        sortDir: "up",
	        rPPOptions: [1, 10, 20, 30, 40, 50, 100, 500, 1000]
	    };
	    var $grid = $("#grid_json").pqGrid(obj);
	});    
   
 </script>
</head>
<body>
<div id="grid_json"></div>
</body>
</html>