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
		
	<link type="text/css" rel="stylesheet" href="css/basic.css"/>
	
	<script type="text/javascript">
	//checkout http://developer.yahoo.com/yui/examples/datatable/dt_dynamicdata.html and 
	YAHOO.example.Data = {
	    bookorders: [
	        {id:"po-0167", date:new Date(1980, 2, 24), quantity:1, amount:4, title:"A Book About Nothing"},
	        {id:"po-0783", date:new Date("January 3, 1983"), quantity:null, amount:12.12345, title:"The Meaning of Life"},
	        {id:"po-0297", date:new Date(1978, 11, 12), quantity:12, amount:1.25, title:"This Book Was Meant to Be Read Aloud"},
	        {id:"po-1482", date:new Date("March 11, 1985"), quantity:6, amount:3.5, title:"Read Me Twice"}
	    ]
	}
	
	YAHOO.util.Event.addListener(window, "load", function() {
	    YAHOO.example.Basic = function() {
	        var myColumnDefs = [
	            {key:"id", sortable:true, resizeable:true},
	            {key:"date", formatter:YAHOO.widget.DataTable.formatDate, sortable:true, sortOptions:{defaultDir:YAHOO.widget.DataTable.CLASS_DESC},resizeable:true},
	            {key:"quantity", formatter:YAHOO.widget.DataTable.formatNumber, sortable:true, resizeable:true},
	            {key:"amount", formatter:YAHOO.widget.DataTable.formatCurrency, sortable:true, resizeable:true},
	            {key:"title", sortable:true, resizeable:true}
	        ];
	
	        var myDataSource = new YAHOO.util.DataSource(YAHOO.example.Data.bookorders);
	        myDataSource.responseType = YAHOO.util.DataSource.TYPE_JSARRAY;
	        myDataSource.responseSchema = {
	            fields: ["id","date","quantity","amount","title"]
	        };
	
	        var myDataTable = new YAHOO.widget.DataTable("basic",
	                myColumnDefs, myDataSource, {caption:"DataTable Caption"});
	                
	        return {
	            oDS: myDataSource,
	            oDT: myDataTable
	        };
	    }();
	});
	

	</script>
</head>


<body class="yui-skin-sam">
	
	<div id="basic">
	
	</div>
</body>