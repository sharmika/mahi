<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd" >
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<meta http-equiv="description" content="ParamQuery Grid is industry leading jQuery grid plugin for creating awesome Ajax applications.">        
		<meta http-equiv="keywords" content="jquery grid plugin plugins best jqueryui widget excel paramquery pqgrid google spreadsheet">
		<META NAME="ROBOTS" CONTENT="INDEX, FOLLOW">
		
		<title>ParamQuery Grid Search Demo</title>
<!--<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/themes/base/jquery-ui.css" />    
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>-->
<!--jquery 1.7.0 to 1.10.0-->
<!--jQueryui 9.0(uses msie,issues if used with higher jQuery),9.1(issues with pqgridevent doesn't fire in derived class),9.2, 10.0,10.1,10.2,10.3-->
<!--<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/le-frog/jquery-ui.css" />    
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"></script>-->

<link rel="stylesheet" href="/jquery-ui-1.9.0.custom/development-bundle/themes/base/jquery.ui.all.css" />		
<script src="/jquery-ui-1.9.0.custom/js/jquery-1.8.2.js" ></script>        
<script src="/jquery-ui-1.9.0.custom/js/jquery-ui-1.9.0.custom.js" ></script>
        
        <link rel='stylesheet' href="/Content/css/demos.css" />

        
		<style type="text/css">
			*{
                padding:0px;margin:0px;
				font-size:12px;
				font-family:Verdana, Geneva, Helvetica, sans-serif;
                line-height:20px;                				
			}
			body{
				background:#efefef;				
			}
			div.body_div{
				width:1340px;
				margin:0px auto;
				padding:60px 0px 0px;	
				position:relative;		
				border:0px solid #fff;	
			}
            /*this block creates problem*/
			div.content_div{
				min-height:600px;                 
                width:1195px;
				margin:3px auto 0px;
				border:1px solid #ddd;				
				background:#fff;				
				border-radius: 6px;
				box-shadow: 0px 3px 3px -3px rgba(0, 0, 0, .30);
				/*vertical-align:top;*//*this line causes IE grid header bug*/
                padding:10px;
			}
            * html div.content_div{ height:600px; }

		    /*div.content_div span.inline{
				vertical-align:top;
				border:0px solid red;
				padding:18px;
				display:inline-block;
		    }*/
			div.logo{
                /*left:110px;*/
				position:absolute;left:500px;top:18px;font-size:21px;font-weight:bold;font-family:"Arial Narrow";
			}
            div.selecttheme-div{
            	position:absolute;left:850px;top:22px;font-weight:bold;font-family:"Arial";
            }
			div.logo *{
				font-size:21px;font-weight:bold;font-family:Arial Narrow;
			}
			div.logo span.first{
				background:#fff;line-height:30px;display:inline-block;border:1px solid #000;padding:0px 5px;
			}
			div.logo span.second{
				background:#000;line-height:30px;display:inline-block;border:1px solid #000;color:#fff;padding:0 5px;
			}
			div.github-icon{
                /*position:absolute;left:540px;bottom:14px;*/
                margin:10px 100px 0px;width:30px;position:relative;
            }
            code
            {
                background:#eee;
                color:#333;
                border:1px dotted lightblue;
            }

            
		</style>
	</head>
	<body>
        <style>
	ul.menu{
		/*position:absolute;left:0px;top:20px;font-size:22px;font-weight:bold;*/
		background:url(/Content/images/menu_bg.png);
		height:38px;				
		list-style-type:none;				
		/*line-height:1.3em;*/
		/*width:911px;*/
        /*width:892px;*/
        width: 981px;
		margin:auto;
	}
	.menu li{
		float:left;
		height:38px;
		background-image:url(/Content/images/menu_divider.png);
		background-position:right center;
		background-repeat:repeat-y;				
	}
	.menu li.last{
		background-image:none;
	}
	.menu li.last a{
		margin-right:0px;
	}			
	.menu li a{
		float:left;
		padding:0 28px;
		color:#fff;
		font-size:13px;
		font-family:Arial;
		font-weight:bolder;
		line-height:36px;
		height:36px;
		margin-left:0px;
		margin-right:3px;
		text-decoration:none;
	}
	.menu li a:hover{
		background:#555;
		/*opacity:;*/
	}
	.menu li a.selected{
		background:#333;
		/*opacity:;*/
	}			
</style>
<script>
    $(function () {
        $(".menu").find("a").removeClass("selected");
        var url = document.URL.toString();
        //remove # and beyond (api urls)
        url = url.substring(0, (url.indexOf("#") > 0) ? url.indexOf("#") : url.length);
        //alert(url);
        var last = url.lastIndexOf("/");
        var part = "";
        if (last > 0) {
            part = url.substring(last, url.length);
            part = part.toLowerCase();
            $(".menu").find("a[href~=\"" + part + "\"]").addClass("selected");
        }
    });
    window.onload = function () {
        var $pro = $(".menu").find("a[href~='/pro']");
        //debugger;
        $pro.effect('pulsate', null, 1500, function () { });
    }
</script>
<ul style="" class='menu'>
	<li><a href="/grid" class=selected >ParamQuery</a></li>
    <li><a style='color:yellow;' href="/pro" >Pro Version</a></li>
	<li><a href="/demos">Demos</a></li>
	<li><a href="/api">API</a></li>
	<li><a href="/tutorial">Tutorial</a></li>
	<li><a href="/faq">FAQ</a></li>
    <li><a href="/download">Download</a></li>
    <li><a href="/forum">Forum</a></li>
    <li class="last"><a href="/contact">Contact</a></li>
</ul>

		<div style="position:absolute;right:0px;top:0px;">
<a href="https://github.com/paramquery/grid"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" alt="Fork me on GitHub"></a>
</div>
		<div class="body_div">
			<div class='logo'>				
				jQuery Grid Plugin - <span class='first'>PQ</span><span class='second'>Grid</span>
			</div>
            <div class="selecttheme-div">
                Choose your Theme: 
<select id="select-themes">
    <option value="base">Base</option>
    <option value="blitzer">Blitzer</option>
    <option value="cupertino">Cupertino</option>
    <option value="dark-hive">Dark Hive</option>
    <option value="dot-luv">Dot Luv</option>
    <option value="eggplant">Eggplant</option>
    <option value="excite-bike">Excite Bike</option>
    <option value="hot-sneaks">Hot Sneaks</option>
    <option value="humanity">Humanity</option>
    <option value="le-frog">Le Frog</option>
    <option value="mint-choc">Mint Choc</option>
    <option value="paramquery" selected>Office</option>    
    <option value="overcast">Overcast</option>
    
    <option value="pepper-grinder">Pepper Grinder</option>
    <option value="redmond">Redmond</option>    
    <option value="south-street">South Street</option>
    <option value="start">Start</option>
    <option value="smoothness">Smoothness</option>
    <option value="sunny">Sunny</option>
    <option value="swanky-purse">Swanky Purse</option>
    <option value="trontastic">Trontastic</option>                                         
    <option value="ui-darkness">UI Darkness</option>
    <option value="ui-lightness">UI Lightness</option>    
    <option value="vader">Vader</option>
</select>
<link class="link-override" rel="stylesheet" href="css/pqgrid.css" />
<script>
    $('#select-themes').change(function () {
        var theme = $(this).val();        
        try {
            _gaq.push(['_trackPageview', "theme-"+theme]); //Google Analytics.
        }
        catch (ex) { }
        if (theme == 'paramquery') {
            var href = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/themes/base/jquery-ui.css";
            $('head').append('<link href="' + href + '" rel="Stylesheet" type="text/css" />');
            var href="/Content/css/themes/Office/pqgrid.css";
            var loc=document.location.toString();
            var indx=loc.indexOf("/",7);
            loc=loc.substring(0,indx);

            href=loc+href;
            //alert(href);
            //debugger;
            $('head').append('<link href="' + href + '" class="link-override"  rel="Stylesheet" type="text/css" />');
        }
        else {
            var href = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/themes/" + theme + "/jquery-ui.css";
            $('head').append('<link href="' + href + '" rel="Stylesheet" type="text/css" />');
            $("link.link-override").remove();
        }

        function refreshGrid() {
            var active = $("#tabs").tabs("option", "active");
            //debugger;
            var $grid;
            if(isNaN(active)){                
                $grid=$(".pq-grid");
            }
            else{
                var id = (active == 0) ? "tabs-1" : "ui-tabs-" + active;                            
                $grid = $(".pq-grid", $("#" + id));
            }
            var obj=$grid.data();
            for(var key in obj){
                if(key.indexOf("pq")==0){
                    $grid[key]("refresh");
                }
            }                    
        }
        window.setTimeout(refreshGrid, 1500);
        return false;
    });
</script>
               
            </div>
			<div style="" class="content_div">
                    
    <!--link href="/google-code-prettify/distrib/google-code-prettify/prettify.css" type="text/css" rel="stylesheet" />   
    <script src="/google-code-prettify/distrib/google-code-prettify/prettify.js"></script-->

    <script type="text/javascript" src="/syntaxhighlighter/scripts/shCore.js"></script>
	<script type="text/javascript" src="/syntaxhighlighter/scripts/shBrushJScript.js"></script>
	<link type="text/css" rel="stylesheet" href="/syntaxhighlighter/styles/shCoreDefault.css"/>
    <link type="text/css" rel="stylesheet" href="/Content/css/syntaxhighlighter.css"/>
    
    <link rel="stylesheet" href="/Content/css/pqgrid.min.css" />    

    <script src="/Content/js/pqgrid.min.js"></script>    

    <script src="/Content/js/localize/pq-localize-zh.js"></script>
    <script src="/Content/js/localize/pq-localize-es.js"></script>
    <script src="/Content/js/localize/pq-localize-it.js"></script>
    <script src="/Content/js/localize/pq-localize-ja.js"></script>
    <script src="/Content/js/localize/pq-localize-hu.js"></script>
    <script src="/Content/js/localize/pq-localize-nl.js"></script>
    <script src="/Content/js/localize/pq-localize-de.js"></script>

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

<p class='pq-demo-user-notes'>
Search can be performed against local or remote data in any format.
<br />
Below example performs search against local data from HTML table source.
<br />
The search toolbar can be appended (below title, footer) or prepended (above title, footer) at the top or bottom of the pqGrid.
<br />
The toolbar is created and attached during the render event.
<br />
The search results are refreshed after every column sort by binding search function to sort event of the grid.
</p>

<div id="grid_search" style="margin:auto;"></div>
<br />
<hr />

<pre class="prettyprint">
</pre>
<pre class="prettyprint2">
</pre>

<!--<tr><td class="tabh" colspan="7"><b>Companies listed on the NASDAQ</b></td></tr>-->    
<table width="610" id="nasdaq_market_table" cellspacing="1" cellpadding="0" style="display:none;">
<tr><th>Company Name</th><th>Symbol</th><th>Chart</th><th>Price</th><th>Change</th><th>% Change</th><th>Volume</th></tr>
<tr class="ts0"><td align="left">Sirius Xm Radio Inc. </td><td>SIRI</td><td></td><td align="left">2.70</td><td align="right">+0.01</td><td align="right">+0.37%</td><td align="right">81,250,806</td></tr>
<tr class="ts1"><td align="left">Intel</td><td>INTC</td><td></td><td align="left">20.26</td><td align="right">+0.07</td><td align="right">+0.35%</td><td align="right">69,433,790</td></tr>
<tr class="ts0"><td align="left">Microsoft</td><td>MSFT</td><td></td><td align="left">26.74</td><td align="right">+0.22</td><td align="right">+0.83%</td><td align="right">57,179,237</td></tr>
<tr class="ts1"><td align="left">Research in Motion Limited </td><td>RIMM</td><td></td><td align="left">9.58</td><td align="right">+0.38</td><td align="right">+4.13%</td><td align="right">42,529,737</td></tr>
<tr class="ts0"><td align="left">Cisco Systems </td><td>CSCO</td><td></td><td align="left">18.31</td><td align="right">+0.32</td><td align="right">+1.78%</td><td align="right">40,616,346</td></tr>
<tr class="ts1"><td align="left">Yahoo! Inc. </td><td>YHOO</td><td></td><td align="left">18.36</td><td align="right">+0.50</td><td align="right">+2.80%</td><td align="right">32,997,005</td></tr>
<tr class="ts0"><td align="left">Dell</td><td>DELL</td><td></td><td align="left">9.12</td><td align="right">+0.26</td><td align="right">+2.95%</td><td align="right">29,800,460</td></tr>
<tr class="ts1"><td align="left">Apple</td><td>AAPL</td><td></td><td align="left">566.06</td><td align="right">+38.38</td><td align="right">+7.27%</td><td align="right">29,398,995</td></tr>
<tr class="ts0"><td align="left">Oracle </td><td>ORCL</td><td></td><td align="left">30.14</td><td align="right">+0.14</td><td align="right">+0.47%</td><td align="right">22,551,075</td></tr>
<tr class="ts1"><td align="left">Applied Materials </td><td>AMAT</td><td></td><td align="left">10.35</td><td align="right">+0.20</td><td align="right">+1.97%</td><td align="right">15,542,402</td></tr>
<tr class="ts0"><td align="left">Brocade Communications Systems </td><td>BRCD</td><td></td><td align="left">5.56</td><td align="right">+0.30</td><td align="right">+5.70%</td><td align="right">14,598,474</td></tr>
<tr class="ts1"><td align="left">News </td><td>NWSA</td><td></td><td align="left">23.96</td><td align="right">+0.67</td><td align="right">+2.88%</td><td align="right">14,096,772</td></tr>
<tr class="ts0"><td align="left">Dynavax Technologies </td><td>DVAX</td><td></td><td align="left">2.64</td><td align="right">+0.20</td><td align="right">+8.20%</td><td align="right">12,758,155</td></tr>
<tr class="ts1"><td align="left">Qualcomm Incorporated </td><td>QCOM</td><td></td><td align="left">62.12</td><td align="right">+0.19</td><td align="right">+0.31%</td><td align="right">12,169,272</td></tr>
<tr class="ts0"><td align="left">Activision Blizzard </td><td>ATVI</td><td></td><td align="left">11.23</td><td align="right">+0.18</td><td align="right">+1.62%</td><td align="right">11,940,358</td></tr>
<tr class="ts1"><td align="left">Huntington Bancshares</td><td>HBAN</td><td></td><td align="left">6.11</td><td align="right">+0.10</td><td align="right">+1.66%</td><td align="right">11,448,001</td></tr>
<tr class="ts0"><td align="left">Ftb</td><td>FITB</td><td></td><td align="left">14.47</td><td align="right">+0.37</td><td align="right">+2.62%</td><td align="right">11,313,550</td></tr>
<tr class="ts1"><td align="left">Comcast </td><td>CMCSA</td><td></td><td align="left">36.01</td><td align="right">+0.56</td><td align="right">+1.58%</td><td align="right">10,694,461</td></tr>
<tr class="ts0"><td align="left">Marvell</td><td>MRVL</td><td></td><td align="left">7.70</td><td align="right">+0.30</td><td align="right">+4.06%</td><td align="right">10,262,907</td></tr>
<tr class="ts1"><td align="left">Arena</td><td>ARNA</td><td></td><td align="left">8.98</td><td align="right">+0.48</td><td align="right">+5.65%</td><td align="right">10,182,512</td></tr>
<tr class="ts0"><td align="left">Nvidia </td><td>NVDA</td><td></td><td align="left">11.70</td><td align="right">+0.32</td><td align="right">+2.77%</td><td align="right">10,103,195</td></tr>
<tr class="ts1"><td align="left">Staples </td><td>SPLS</td><td></td><td align="left">12.20</td><td align="right">+0.47</td><td align="right">+4.01%</td><td align="right">9,588,436</td></tr>
<tr class="ts0"><td align="left">Seagate Technology </td><td>STX</td><td></td><td align="left">27.12</td><td align="right">+0.01</td><td align="right">+0.02%</td><td align="right">9,254,477</td></tr>
<tr class="ts1"><td align="left">Gilead Sciences </td><td>GILD</td><td></td><td align="left">74.82</td><td align="right">+0.42</td><td align="right">+0.56%</td><td align="right">9,165,000</td></tr>
<tr class="ts0"><td align="left">Ebay Inc. </td><td>EBAY</td><td></td><td align="left">47.95</td><td align="right">+0.69</td><td align="right">+1.46%</td><td align="right">8,928,825</td></tr>
<tr class="ts1"><td align="left">Sina </td><td>SINA</td><td></td><td align="left">48.66</td><td align="right">+3.59</td><td align="right">+7.97%</td><td align="right">8,158,039</td></tr>
<tr class="ts0"><td align="left">Express Scripts </td><td>ESRX</td><td></td><td align="left">52.16</td><td align="right">+0.03</td><td align="right">+0.06%</td><td align="right">8,051,891</td></tr>
<tr class="ts1"><td align="left">American Capital Agency </td><td>AGNC</td><td></td><td align="left">31.12</td><td align="right">+0.13</td><td align="right">+0.42%</td><td align="right">8,008,496</td></tr>
<tr class="ts0"><td align="left">Broadcom </td><td>BRCM</td><td></td><td align="left">31.25</td><td align="right">+0.78</td><td align="right">+2.56%</td><td align="right">7,879,259</td></tr>
<tr class="ts1"><td align="left">Clearwire </td><td>CLWR</td><td></td><td align="left">2.21</td><td align="right">+0.02</td><td align="right">+0.91%</td><td align="right">7,690,019</td></tr>
<tr class="ts0"><td align="left">Green Mountain Coffee Roasters </td><td>GMCR</td><td></td><td align="left">27.29</td><td align="right">+2.74</td><td align="right">+11.16%</td><td align="right">7,680,811</td></tr>
<tr class="ts1"><td align="left">Riverbed Technology </td><td>RVBD</td><td></td><td align="left">17.26</td><td align="right">+0.78</td><td align="right">+4.73%</td><td align="right">7,659,634</td></tr>
<tr class="ts0"><td align="left">Mylan Inc. </td><td>MYL</td><td></td><td align="left">25.96</td><td align="right">+0.42</td><td align="right">+1.64%</td><td align="right">6,555,432</td></tr>
<tr class="ts1"><td align="left">Symantec </td><td>SYMC</td><td></td><td align="left">18.19</td><td align="right">+0.22</td><td align="right">+1.22%</td><td align="right">6,376,310</td></tr>
<tr class="ts0"><td align="left">Starbucks </td><td>SBUX</td><td></td><td align="left">49.76</td><td align="right">+1.00</td><td align="right">+2.05%</td><td align="right">6,335,188</td></tr>
<tr class="ts1"><td align="left">Netapp </td><td>NTAP</td><td></td><td align="left">30.88</td><td align="right">+0.62</td><td align="right">+2.05%</td><td align="right">6,270,638</td></tr>
<tr class="ts0"><td align="left">Melco Crown Entertainment Limited</td><td>MPEL</td><td></td><td align="left">14.50</td><td align="right">+0.67</td><td align="right">+4.84%</td><td align="right">6,024,739</td></tr>
<tr class="ts1"><td align="left">Skyworks Solutions </td><td>SWKS</td><td></td><td align="left">20.66</td><td align="right">+0.84</td><td align="right">+4.23%</td><td align="right">6,012,725</td></tr>
<tr class="ts0"><td align="left">Nii Holdings </td><td>NIHD</td><td></td><td align="left">5.06</td><td align="right">-0.17</td><td align="right">-3.25%</td><td align="right">5,978,970</td></tr>
<tr class="ts1"><td align="left">Nuance Communications</td><td>NUAN</td><td></td><td align="left">21.58</td><td align="right">+1.23</td><td align="right">+6.04%</td><td align="right">5,767,351</td></tr>
<tr class="ts0"><td align="left">Sandisk</td><td>SNDK</td><td></td><td align="left">39.30</td><td align="right">-0.16</td><td align="right">-0.41%</td><td align="right">5,738,722</td></tr>
<tr class="ts1"><td align="left">Urban Outfitters </td><td>URBN</td><td></td><td align="left">37.07</td><td align="right">+2.02</td><td align="right">+5.76%</td><td align="right">5,386,582</td></tr>
<tr class="ts0"><td align="left">Aruba Networks </td><td>ARUN</td><td></td><td align="left">18.53</td><td align="right">-0.30</td><td align="right">-1.59%</td><td align="right">5,281,506</td></tr>
<tr class="ts1"><td align="left">Dryships</td><td>DRYS</td><td></td><td align="left">1.68</td><td align="right">-0.02</td><td align="right">-1.18%</td><td align="right">5,243,539</td></tr>
<tr class="ts0"><td align="left">Cirrus Logic</td><td>CRUS</td><td></td><td align="left">30.84</td><td align="right">+2.57</td><td align="right">+9.09%</td><td align="right">4,990,237</td></tr>
<tr class="ts1"><td align="left">Baidu</td><td>BIDU</td><td></td><td align="left">92.41</td><td align="right">-0.27</td><td align="right">-0.29%</td><td align="right">4,989,128</td></tr>
<tr class="ts0"><td align="left">Dollar Tree </td><td>DLTR</td><td></td><td align="left">40.44</td><td align="right">+1.62</td><td align="right">+4.17%</td><td align="right">4,760,360</td></tr>
<tr class="ts1"><td align="left">Atmel </td><td>ATML</td><td></td><td align="left">4.73</td><td align="right">+0.29</td><td align="right">+6.54%</td><td align="right">4,731,647</td></tr>
<tr class="ts0"><td align="left">The Directv Grp. - Cmn Stk</td><td>DTV</td><td></td><td align="left">49.09</td><td align="right">+0.10</td><td align="right">+0.20%</td><td align="right">4,725,443</td></tr>
<tr class="ts1"><td align="left">Virgin Media Inc. </td><td>VMED</td><td></td><td align="left">33.63</td><td align="right">+1.12</td><td align="right">+3.45%</td><td align="right">4,601,339</td></tr>
<tr class="ts0"><td align="left">On Semiconductor </td><td>ONNN</td><td></td><td align="left">5.93</td><td align="right">+0.11</td><td align="right">+1.89%</td><td align="right">4,566,807</td></tr>
<tr class="ts1"><td align="left">Hudson City Bancorp</td><td>HCBK</td><td></td><td align="left">8.04</td><td align="right">+0.09</td><td align="right">+1.07%</td><td align="right">4,285,937</td></tr>
<tr class="ts0"><td align="left">Amarin</td><td>AMRN</td><td></td><td align="left">10.62</td><td align="right">-0.22</td><td align="right">-2.03%</td><td align="right">4,284,533</td></tr>
<tr class="ts1"><td align="left">Dish Network </td><td>DISH</td><td></td><td align="left">35.02</td><td align="right">-0.53</td><td align="right">-1.49%</td><td align="right">4,212,883</td></tr>
<tr class="ts0"><td align="left">Allscripts-misys Healthcare Solutions</td><td>MDRX</td><td></td><td align="left">12.26</td><td align="right">+0.10</td><td align="right">+0.82%</td><td align="right">4,139,064</td></tr>
<tr class="ts1"><td align="left">Hologic </td><td>HOLX</td><td></td><td align="left">19.45</td><td align="right">-0.05</td><td align="right">-0.26%</td><td align="right">3,940,160</td></tr>
<tr class="ts0"><td align="left">Acacia</td><td>ACTG</td><td></td><td align="left">20.42</td><td align="right">-3.02</td><td align="right">-12.88%</td><td align="right">3,912,198</td></tr>
<tr class="ts1"><td align="left">Biomimetic Therapeutics </td><td>BMTI</td><td></td><td align="left">7.30</td><td align="right">+3.15</td><td align="right">+75.90%</td><td align="right">3,838,551</td></tr>
<tr class="ts0"><td align="left">Amgen Inc. </td><td>AMGN</td><td></td><td align="left">85.39</td><td align="right">+0.85</td><td align="right">+1.01%</td><td align="right">3,796,311</td></tr>
<tr class="ts1"><td align="left">Verisign </td><td>VRSN</td><td></td><td align="left">40.62</td><td align="right">-0.30</td><td align="right">-0.74%</td><td align="right">3,760,446</td></tr>
<tr class="ts0"><td align="left">Warner Chilcott Limited </td><td>WCRX</td><td></td><td align="left">11.99</td><td align="right">+0.01</td><td align="right">+0.08%</td><td align="right">3,731,682</td></tr>
<tr class="ts1"><td align="left">Leap Wireless</td><td>LEAP</td><td></td><td align="left">6.30</td><td align="right">+0.33</td><td align="right">+5.53%</td><td align="right">3,709,778</td></tr>
<tr class="ts0"><td align="left">Ca Inc. </td><td>CA</td><td></td><td align="left">21.98</td><td align="right">+0.17</td><td align="right">+0.78%</td><td align="right">3,688,920</td></tr>
<tr class="ts1"><td align="left">Jds Uniphase </td><td>JDSU</td><td></td><td align="left">11.06</td><td align="right">+0.26</td><td align="right">+2.36%</td><td align="right">3,637,923</td></tr>
<tr class="ts0"><td align="left">Amazon.com </td><td>AMZN</td><td></td><td align="left">229.62</td><td align="right">+4.39</td><td align="right">+1.95%</td><td align="right">3,593,171</td></tr>
<tr class="ts1"><td align="left">Vivus </td><td>VVUS</td><td></td><td align="left">10.28</td><td align="right">-0.05</td><td align="right">-0.48%</td><td align="right">3,532,629</td></tr>
<tr class="ts0"><td align="left">Celgene</td><td>CELG</td><td></td><td align="left">75.17</td><td align="right">+0.84</td><td align="right">+1.13%</td><td align="right">3,510,318</td></tr>
<tr class="ts1"><td align="left">Autodesk </td><td>ADSK</td><td></td><td align="left">31.31</td><td align="right">-0.17</td><td align="right">-0.54%</td><td align="right">3,467,705</td></tr>
<tr class="ts0"><td align="left">Ross Stores</td><td>ROST</td><td></td><td align="left">55.53</td><td align="right">+1.79</td><td align="right">+3.33%</td><td align="right">3,378,375</td></tr>
<tr class="ts1"><td align="left">Netflix </td><td>NFLX</td><td></td><td align="left">81.38</td><td align="right">+0.48</td><td align="right">+0.59%</td><td align="right">3,325,462</td></tr>
<tr class="ts0"><td align="left">Altera</td><td>ALTR</td><td></td><td align="left">31.10</td><td align="right">+0.65</td><td align="right">+2.13%</td><td align="right">3,311,009</td></tr>
<tr class="ts1"><td align="left">E*trade Financial </td><td>ETFC</td><td></td><td align="left">8.18</td><td align="right">+0.30</td><td align="right">+3.81%</td><td align="right">3,305,654</td></tr>
<tr class="ts0"><td align="left">Compuware </td><td>CPWR</td><td></td><td align="left">8.49</td><td align="right">+0.04</td><td align="right">+0.47%</td><td align="right">3,273,667</td></tr>
<tr class="ts1"><td align="left">Ocular Sciences</td><td>OCLR</td><td></td><td align="left">1.54</td><td align="right">+0.25</td><td align="right">+19.38%</td><td align="right">3,253,864</td></tr>
<tr class="ts0"><td align="left">Bgc Partners </td><td>BGCP</td><td></td><td align="left">3.66</td><td align="right">+0.33</td><td align="right">+9.91%</td><td align="right">3,234,387</td></tr>
<tr class="ts1"><td align="left">Prospect Energy</td><td>PSEC</td><td></td><td align="left">10.61</td><td align="right">+0.24</td><td align="right">+2.31%</td><td align="right">3,219,966</td></tr>
<tr class="ts0"><td align="left">Flextronics</td><td>FLEX</td><td></td><td align="left">5.80</td><td align="right">+0.26</td><td align="right">+4.69%</td><td align="right">3,171,138</td></tr>
<tr class="ts1"><td align="left">Comcast</td><td>CMCSK</td><td></td><td align="left">35.07</td><td align="right">+0.58</td><td align="right">+1.68%</td><td align="right">3,151,089</td></tr>
<tr class="ts0"><td align="left">Take Two</td><td>TTWO</td><td></td><td align="left">12.36</td><td align="right">+0.51</td><td align="right">+4.26%</td><td align="right">3,001,856</td></tr>
<tr class="ts1"><td align="left">Citrix</td><td>CTXS</td><td></td><td align="left">61.17</td><td align="right">+1.96</td><td align="right">+3.31%</td><td align="right">2,990,489</td></tr>
<tr class="ts0"><td align="left">Acadia</td><td>ACAD</td><td></td><td align="left">2.26</td><td align="right">+0.35</td><td align="right">+18.32%</td><td align="right">2,986,958</td></tr>
<tr class="ts1"><td align="left">Lam Research </td><td>LRCX</td><td></td><td align="left">34.69</td><td align="right">+0.17</td><td align="right">+0.49%</td><td align="right">2,886,352</td></tr>
<tr class="ts0"><td align="left">Costco Wholesale </td><td>COST</td><td></td><td align="left">96.57</td><td align="right">+0.88</td><td align="right">+0.92%</td><td align="right">2,877,424</td></tr>
<tr class="ts1"><td align="left">Arm Holdings Plc Ads</td><td>ARMH</td><td></td><td align="left">35.72</td><td align="right">+1.30</td><td align="right">+3.78%</td><td align="right">2,822,111</td></tr>
<tr class="ts0"><td align="left">Avanir Pharmaceuticals </td><td>AVNR</td><td></td><td align="left">2.60</td><td align="right">+0.37</td><td align="right">+16.37%</td><td align="right">2,800,294</td></tr>
</table>



                
                                

                   <div id="disqus_thread" style="margin:50px auto 50px;width:700px;"></div>
    <script type="text/javascript">
        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
        var disqus_shortname = 'paramquery'; // required: replace example with your forum shortname

        /* * * DON'T EDIT BELOW THIS LINE * * */
        $(function () {
            //if (!$.browser.msie) {
            if (!(document.compatMode && document.all)) {
                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
            }
            else {
                $("#disqus_thread").hide();
            }
        });
    </script>
    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
    <!--<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>-->
            
                
			</div>                        			
		</div>
            
		<div style="margin:30px auto 25px;width:260px;color:#666;font-size:10px;line-height:20px;height:25px;">				
			Copyright &copy; 2012-2013 ParamQuery
		</div>
        <!--Html.Partial("godaddy")-->
        <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36965243-1']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>        
	</body>
</html>
