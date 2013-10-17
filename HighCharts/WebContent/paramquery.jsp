<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--jQuery dependencies-->
 <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/sunny/jquery-ui.css" />
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>   
 <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
 
 <!--ParamQuery Grid files-->
 <script type="text/javascript" src="js/shCore.js"></script>
	<script type="text/javascript" src="js/shBrushJScript.js"></script>
	<link type="text/css" rel="stylesheet" href="css/shCoreDefault.css"/>
	<link type="text/css" rel="stylesheet" href="css/syntaxhighlighter.css"/>
 <link rel="stylesheet" href="css/pqgrid.min.css" />
 <script type="text/javascript" src="js/pqgrid.min.js"></script>  
    <script src="js/pq-localize-zh.js"></script>
    <script src="js/pq-localize-es.js"></script>
    <script src="js/pq-localize-it.js"></script>
    <script src="js/pq-localize-ja.js"></script>
    <script src="js/pq-localize-hu.js"></script>
    <script src="js/pq-localize-nl.js"></script>
    <script src="js/pq-localize-de.js"></script>
 
<div style="" class="content_div">
                    
   
    <script>
        $(function () {
            var scriptt = $("script.prettyprint,style.prettyprint,div.prettyprint").html();
            //alert(scriptt );
            $("pre.prettyprint").addClass("brush: js;").text(scriptt);
            scriptt = $("script.prettyprint2,style.prettyprint2,div.prettyprint2").html();
            //alert(scriptt );
            $("pre.prettyprint2").addClass("brush: js;").text(scriptt);
            //prettyPrint();
            SyntaxHighlighter.all();
            /*window.setTimeout(function () {
                $("div.syntaxhighlighter>div.toolbar").remove();
            }, 1000);*/

        });
    </script>

<style class='prettyprint'>
    div.pq-grid-toolbar-search
    {
        text-align:left;
    }
    div.pq-grid-toolbar-search *
    {
        margin:1px 5px 1px 0px; 
        vertical-align:middle;       
    }
    div.pq-grid-toolbar-search .pq-separator
    {
       margin-left:10px;   
       margin-right:10px;   
    }
    div.pq-grid-toolbar-search select
    {
        height:18px;    
        position:relative;
    }
    div.pq-grid-toolbar-search input.pq-search-txt
    {
        width:180px;border:1px solid #b5b8c8;
        /*text-align:center; */
        height:16px;
        padding:0px 5px;        
    }
</style>		
<script class="prettyprint2">
    $(function () {
        var pqSearch = {
            txt: "",
            rowIndices: [],
            curIndx: null,
            colIndx: 0,
            sortIndx: null,
            sortDir: null,
            results: null,
            prevResult: function () {
                var colIndx = this.colIndx,
                    rowIndices = this.rowIndices;
                if (rowIndices.length == 0) {
                    this.curIndx = null;
                }
                else if (this.curIndx == null || this.curIndx == 0) {
                    this.curIndx = rowIndices.length - 1;
                }
                else {
                    this.curIndx--;
                }
                this.updateSelection(colIndx);
            },
            nextResult: function () {
                //debugger;
                var rowIndices = this.rowIndices;
                if (rowIndices.length == 0) {
                    this.curIndx = null;
                }
                else if (this.curIndx == null) {
                    this.curIndx = 0;
                }
                else if (this.curIndx < rowIndices.length - 1) {
                    this.curIndx++;
                }
                else {
                    this.curIndx = 0;
                }
                this.updateSelection();
            },
            updateSelection: function () {
                var colIndx = this.colIndx,
                    curIndx = this.curIndx,
                    rowIndices = this.rowIndices;
                if (rowIndices.length > 0) {
                    //results.html("Selected " + (curIndx + 1) + " , "+ rowIndx[curIndx] +" of " + rowIndx.length + " matche(s).");
                    this.results.html("Selected " + (curIndx + 1) + " of " + rowIndices.length + " match(es).");
                }
                else {
                    this.results.html("Nothing found.");
                }
                $grid.pqGrid("setSelection", null);
                //$grid.pqGrid("option", "customData", { foundRowIndices: rowIndices, txt: this.txt, searchColIndx: colIndx });
                //$grid.pqGrid("refreshColumn", { colIndx: colIndx });
                $grid.pqGrid("setSelection", { rowIndx: rowIndices[curIndx], colIndx: colIndx });
            },
            search: function () {
                var txt = $("input.pq-search-txt").val().toUpperCase(),
                    colIndx = $("select#pq-crud-select-column").val(),
                    DM = $grid.pqGrid("option", "dataModel"),
                    sortIndx = DM.sortIndx,
                    sortDir = DM.sortDir;
                if (txt == this.txt && colIndx == this.colIndx && sortIndx == this.sortIndx && sortDir == this.sortDir) {
                    return;
                }
                this.rowIndices = [], this.curIndx = null;
                this.sortIndx = sortIndx;
                this.sortDir = sortDir;
                if (colIndx != this.colIndx) {
                    //clean the prev column.
                    //$grid.pqGrid("option", "customData", { foundRowIndices: [], txt: "", searchColIndx: colIndx });
                    $grid.pqGrid("option", "customData", null);
                    $grid.pqGrid("refreshColumn", { colIndx: this.colIndx });
                    this.colIndx = colIndx;
                }
                //debugger;

                if (txt != null && txt.length > 0) {
                    txt = txt.toUpperCase();
                    //this.colIndx = $("select#pq-crud-select-column").val();

                    var data = DM.data;
                    //debugger;
                    for (var i = 0; i < data.length; i++) {
                        var row = data[i];
                        var cell = row[this.colIndx].toUpperCase();
                        if (cell.indexOf(txt) != -1) {
                            this.rowIndices.push(i);
                        }
                    }
                }
                $grid.pqGrid("option", "customData", { foundRowIndices: this.rowIndices, txt: txt, searchColIndx: colIndx });
                $grid.pqGrid("refreshColumn", { colIndx: colIndx });
                this.txt = txt;
            },
            render: function (ui) {
                var rowIndxPage = ui.rowIndxPage,
                rowIndx = ui.rowIndx,
                //data = ui.dataModel.data,
                rowData = ui.rowData,
                dataIndx = ui.dataIndx,
                colIndx = ui.colIndx,
                val = rowData[dataIndx];
                //debugger;
                if (ui.customData) {
                    
                    var rowIndices = ui.customData.foundRowIndices,
                    searchColIndx = ui.customData.searchColIndx,
                    txt = ui.customData.txt,
                    txtUpper = txt.toUpperCase(),
                    valUpper = val.toUpperCase();
                    if ($.inArray(rowIndx, rowIndices) != -1 && colIndx == searchColIndx) {
                        var indx = valUpper.indexOf(txtUpper);
                        if (indx >= 0) {
                            var txt1 = val.substring(0, indx);
                            var txt2 = val.substring(indx, indx + txt.length);
                            var txt3 = val.substring(indx + txt.length);
                            return txt1 + "<span style='background:yellow;color:#333;'>" + txt2 + "</span>" + txt3;
                        }
                        else {
                            return val;
                        }
                    }
                }
                return val;
            }
        }
        var tbl = $("#nasdaq_market_table");
        var obj = $.paramquery.tableToArray(tbl);

        var newObj = { width: 900, height: 460, sortIndx: 0,
            title: "Companies listed on the <b>NASDAQ</b>",
            selectionModel: { type: 'cell' },
            editModel: {saveKey: 13},
            freezeCols: 1, resizable: true, editable: true,
            flexHeight:true
        };

        newObj.dataModel = { data: obj.data, paging: "local", rPP: 15, rPPOptions: [10, 15, 20, 50, 100] };
        newObj.colModel = obj.colModel;
        $.extend(newObj.colModel[0], { width: 220, render: function (ui) {
            return pqSearch.render(ui);
        }
        });
        $.extend(newObj.colModel[1], { width: 100, render: function (ui) {
            return pqSearch.render(ui);
        }
        });
        newObj.colModel[2].hidden = true;
        $.extend(newObj.colModel[3], {
            render: function (ui) {
                var rowData = ui.rowData;
                if (rowData[4] < 0) {
                    return "<img src='/Content/images/arrow-us-down.gif'/>&nbsp;" + pqSearch.render(ui);
                }
                else {
                    return "<img src='/Content/images/arrow-us-up.gif'/>&nbsp;" + pqSearch.render(ui);
                }
            }, width: 100
        });
        $.extend(newObj.colModel[4], { width: 120, render: function (ui) {
            return pqSearch.render(ui);
        }
        });

        $.extend(newObj.colModel[5], { width: 120, dataType: "float", render: function (ui) {
            return pqSearch.render(ui);
        }
        });

        $.extend(newObj.colModel[6], { width: 166, render: function (ui) {
            return pqSearch.render(ui);
        }
        });
        //append the search toolbar in top section of grid
        $("#grid_search").on("pqgridrender", function (evt, obj) {
            var $toolbar = $("<div class='pq-grid-toolbar pq-grid-toolbar-search'></div>").appendTo($(".pq-grid-top", this));

            $("<span>Search</span>").appendTo($toolbar);

            $("<input type='text' class='pq-search-txt'/>").appendTo($toolbar).keyup(function (evt) {
                pqSearch.search();
                if (evt.keyCode == 38) {
                    pqSearch.prevResult();
                }
                else {
                    pqSearch.nextResult();
                }
            });

            $("<select id='pq-crud-select-column'>\
                <option value='0'>Company Name</option>\
                <option value='1'>Symbol</option>\
                <option value='3'>Price</option>\
                <option value='4'>Change</option>\
                <option value='5'>%Change</option>\
                <option value='6'>Volume</option>\
                </select>").appendTo($toolbar).change(function () {
                    pqSearch.search();
                    pqSearch.nextResult();
                });
            $("<span class='pq-separator'></span>").appendTo($toolbar);

            $("<button title='Previous Result'></button>")
	                .appendTo($toolbar)
	                .button({ icons: { primary: "ui-icon-circle-triangle-w" }, text: false }).bind("click", function (evt) {
	                    pqSearch.prevResult();
	                });
            $("<button title='Next Result'></button>")
	                .appendTo($toolbar)
	                .button({ icons: { primary: "ui-icon-circle-triangle-e" }, text: false }).bind("click", function (evt) {
	                    pqSearch.nextResult();
	                });
            $("<span class='pq-separator'></span>").appendTo($toolbar);

            pqSearch.results = $("<span class='pq-search-results'>Nothing found.</span>").appendTo($toolbar);

        });
        ///refresh the search after grid sort.
        $("#grid_search").on("pqgridsort", function (evt, obj) {
            pqSearch.search();
            pqSearch.nextResult();
        });
        //change the message after change in selection.
        $("#grid_search").on("pqgridrowselect pqgridcellselect", function (evt, obj) {
            if (evt.originalEvent && evt.originalEvent.type == "click") {
                if (pqSearch.rowIndices.length > 0) {
                    pqSearch.results.html(pqSearch.rowIndices.length + " match(es).");
                }
            }
        });

        var $grid = $("#grid_search").pqGrid(newObj);

    });
</script>  
</head>
<body>
<div id="grid_search" style="margin:auto;"></div>
</body>
</html>