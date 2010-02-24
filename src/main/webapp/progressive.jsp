<%@page import="net.berinle.yuitour.Warehouse;"%>

<head>
	<!--CSS file (default YUI Sam Skin) -->
	<link type="text/css" rel="stylesheet" href="http://yui.yahooapis.com/2.8.0r4/build/datatable/assets/skins/sam/datatable.css">
	 
	<!-- Dependencies -->
	<script src="http://yui.yahooapis.com/2.8.0r4/build/yahoo-dom-event/yahoo-dom-event.js"></script>
	<script src="http://yui.yahooapis.com/2.8.0r4/build/element/element-min.js"></script>
	<script src="http://yui.yahooapis.com/2.8.0r4/build/datasource/datasource-min.js"></script>
	 
	<!-- OPTIONAL: JSON Utility (for DataSource) -->
	<script src="http://yui.yahooapis.com/2.8.0r4/build/json/json-min.js"></script>
	 
	<!-- OPTIONAL: Connection Manager (enables XHR for DataSource) -->
	<script src="http://yui.yahooapis.com/2.8.0r4/build/connection/connection-min.js"></script>
	 
	<!-- OPTIONAL: Get Utility (enables dynamic script nodes for DataSource) -->
	<script src="http://yui.yahooapis.com/2.8.0r4/build/get/get-min.js"></script>
	 
	<!-- OPTIONAL: Drag Drop (enables resizeable or reorderable columns) -->
	<script src="http://yui.yahooapis.com/2.8.0r4/build/dragdrop/dragdrop-min.js"></script>
	 
	<!-- OPTIONAL: Calendar (enables calendar editors) -->
	<script src="http://yui.yahooapis.com/2.8.0r4/build/calendar/calendar-min.js"></script>
	 
	<!-- Source files -->
	<script src="http://yui.yahooapis.com/2.8.0r4/build/datatable/datatable-min.js"></script>
	
	
	<!-- Combo-handled YUI CSS files: --> 
	<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/combo?2.8.0r4/build/datatable/assets/skins/sam/datatable.css"> 
	<!-- Combo-handled YUI JS files: --> 
	<script type="text/javascript" src="http://yui.yahooapis.com/combo?2.8.0r4/build/yahoo-dom-event/yahoo-dom-event.js&2.8.0r4/build/element/element-min.js&2.8.0r4/build/datasource/datasource-min.js&2.8.0r4/build/datatable/datatable-min.js"></script>
	
	<script type="text/javascript">
	//checkout http://developer.yahoo.com/yui/examples/datatable/dt_dynamicdata.html and 
	YAHOO.util.Event.addListener(window, "load", function() {
	    YAHOO.example.EnhanceFromMarkup = new function() {
	        var myColumnDefs = [
	            {key:"due",label:"Due Date",formatter:YAHOO.widget.DataTable.formatDate,sortable:true},
	            {key:"account",label:"Account Number", sortable:true},
	            {key:"quantity",label:"Quantity",formatter:YAHOO.widget.DataTable.formatNumber,sortable:true},
	            {key:"amount",label:"Amount Due",formatter:YAHOO.widget.DataTable.formatCurrency,sortable:true}
	        ];
	
	        this.parseNumberFromCurrency = function(sString) {
	            // Remove dollar sign and make it a float
	            return parseFloat(sString.substring(1));
	        };
	
	        this.myDataSource = new YAHOO.util.DataSource(YAHOO.util.Dom.get("accounts"));
	        this.myDataSource.responseType = YAHOO.util.DataSource.TYPE_HTMLTABLE;
	        this.myDataSource.responseSchema = {
	            fields: [{key:"due", parser:"date"},
	                    {key:"account"},
	                    {key:"quantity", parser:"number"},
	                    {key:"amount", parser:this.parseNumberFromCurrency} // point to a custom parser
	            ]
	        };
	
	        this.myDataTable = new YAHOO.widget.DataTable("markup", myColumnDefs, this.myDataSource,
	                {caption:"Example: Progressively Enhanced Table from Markup",
	                sortedBy:{key:"due",dir:"asc"}}
	        );
	    };
	});

	

	</script>
</head>


<body class="yui-skin-sam">
	
	<div id="markup">
	    <table id="accounts">
	        <thead>
	            <tr>
	                <th>Due Date</th>
	                <th>Account Number</th>
	                <th>Quantity</th>
	                <th>Amount Due</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <td>1/23/1999</td>
	                <td>29e8548592d8c82</td>
	                <td>12</td>
	                <td>$150.00</td>
	            </tr>
	            <tr>
	                <td>5/19/1999</td>
	                <td>83849</td>
	                <td>8</td>
	                <td>$60.00</td>
	            </tr>
	            <tr>
	                <td>8/9/1999</td>
	                <td>11348</td>
	                <td>1</td>
	                <td>$34.99</td>
	            </tr>
	            <tr>
	                <td>1/23/2000</td>
	                <td>29e8548592d8c82</td>
	                <td>10</td>
	                <td>$1.00</td>
	            </tr>
	            <tr>
	                <td>4/28/2000</td>
	                <td>37892857482836437378273</td>
	                <td>123</td>
	                <td>$33.32</td>
	            </tr>
	            <tr>
	                <td>1/23/2001</td>
	                <td>83849</td>
	                <td>5</td>
	                <td>$15.00</td>
	            </tr>
	            <tr>
	                <td>9/30/2001</td>
	                <td>224747</td>
	                <td>14</td>
	                <td>$56.78</td>
	            </tr>
	        </tbody>
	    </table>
	</div>

</body>