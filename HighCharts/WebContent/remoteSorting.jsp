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
    var colM = [
    { title: "ShipCountry", width: 100 },
    { title: "Customer Name", width: 100 },
    { title: "Order ID", width: 100 },
    { title: "Order Date", width: "100" },
    { title: "Required Date", width: 100 },
    { title: "Shipped Date", width: 100 },
    { title: "Shipping Via", width: 100 },
    { title: "Freight", width: 100, align: "right" },
    { title: "Shipping Name", width: 160 },
    { title: "Shipping Address", width: 300 },
    { title: "Shipping City", width: 100 },
    { title: "Shipping Region", width: 100 },
    { title: "Shipping PostalCode", width: 100 }
    ];
    var dataModel = {
        location: "remote",
        sorting: "remote",
        paging: "remote",
        dataType: "JSON",
        method: "GET",
        curPage: 1,           
        rPP: 20,
        sortIndx: 0,
        sortDir: "up",           
        getUrl: function () {
            var sortDir = (this.sortDir == "up") ? "asc" : "desc";
            var sort = ['ShipCountry', 'contactName', 'orderID', 'OrderDate', 'RequiredDate', 'ShippedDate',
                 'ShipVia', 'Freight', 'ShipName', 'ShipAddress', 'ShipCity', 'ShipRegion', 'ShipPostalCode'];
            return { url: "/demos/pagingGetOrders", data: "cur_page=" + this.curPage + "&records_per_page=" +
                this.rPP + "&sortBy=" + sort[this.sortIndx] + "&dir=" + sortDir };
        },
        getData: function (dataJSON) {
            return { curPage: dataJSON.curPage, totalRecords: dataJSON.totalRecords, data: dataJSON.data };
        }
    }
    var grid1 = $("div#grid_sorting_remote").pqGrid({ width: 900, height: 350,
        dataModel: dataModel,
        colModel: colM,
        resizable: true,
        columnBorders: true,
        freezeCols: 2
    });
});
</script>
</head>
<body>
<div id="div#grid_sorting_remote"></div>
</body>
</html>