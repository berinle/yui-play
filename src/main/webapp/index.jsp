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
		YAHOO.example.DynamicData = function() { 
	    // Column definitions 
	    var myColumnDefs = [ // sortable:true enables sorting 
	        {key:"firstName", label:"First Name", sortable:true}, 
	        {key:"lastName", label:"Last Name", sortable:true}, 
	        {key:"ssn", label:"Social Security No."} 
	    ]; 
	 
	    // Custom parser 
	    var stringToDate = function(sData) { 
	        var array = sData.split("-"); 
	        return new Date(array[1] + " " + array[0] + ", " + array[2]); 
	    }; 
	     
	    // DataSource instance 
	    var myDataSource = new YAHOO.util.DataSource("datafeed.jsp"); 
	    myDataSource.responseType = YAHOO.util.DataSource.TYPE_JSON; 
	    myDataSource.responseSchema = { 
	        resultsList: "records", 
	        fields: [ 
	            {key:"firstName", sortable:true}, 
	            {key:"lastName", sortable:true}, 
	            {key:"ssn", sortable:true}
	        ], 
	        metaFields: { 
	            totalRecords: "totalRecords" // Access to value in the server response 
	        } 
	    }; 
	     
	    // DataTable configuration 
	    var myConfigs = { 
	        initialRequest: "sort=firstName&dir=asc&startIndex=0&results=25", // Initial request for first page of data 
	        dynamicData: true, // Enables dynamic server-driven data 
	        sortedBy : {key:"firstName", dir:YAHOO.widget.DataTable.CLASS_ASC}, // Sets UI initial sort arrow 
	        paginator: new YAHOO.widget.Paginator({ rowsPerPage:25, rowsPerPageOptions: [10,25,50,100] }) // Enables pagination  
	    }; 
	     
	    // DataTable instance 
	    var myDataTable = new YAHOO.widget.DataTable("dynamicdata", myColumnDefs, myDataSource, myConfigs); 
	    // Update totalRecords on the fly with value from server 
	    myDataTable.handleDataReturnPayload = function(oRequest, oResponse, oPayload) { 
	        oPayload.totalRecords = oResponse.meta.totalRecords; 
	        return oPayload; 
	    } 
	     
	    return { 
	        ds: myDataSource, 
	        dt: myDataTable 
	    }; 
	         
	}(); 
	
		/*var myColumnDefs = [
				{key: "firstName", label: "First Name", sortable:true},
				{key: "lastName", label: "Last Name", sortable:true},
				{key: "ssn", label: "Social Security No.", sortable:true}
			];
			
			
			
		myDataSource.responseSchema = {
			fields: [
				{key: "firstName", parser: "string"},
				{key: "lastName", parser: "string"},
				{key: "ssn", parser: "string"}
			]
			};
			
		var myConfigs = { paginator: new YAHOO.widget.Paginator({rowsPerPage: 25, rowsPerPageOptions: [10,25,50,100]})};
		
		var myDataTable = new YAHOO.widget.DataTable("myContainer", myColumnDefs, myDataSource, myConfigs);
		*/
	</script>
</head>


<body class="yui-skin-sam">
	<jsp:useBean id="wh" class="net.berinle.yuitour.Warehouse"></jsp:useBean>
	
	<div id="dynamicdata">
	
	</div>
</body>



<%--
<div class="table-data">
	<div id="createbutton" class="commands">
		<button id="create" class="button1" type="submit">Create Something</button>
	</div>
	<display:table name="${wh.persons}" id="row" pagesize="10" sort="list">
		<display:column sortable="true" property="firstName" title="First name" headerClass="sort"/>
		<display:column sortable="true" property="lastName" title="Last name"  headerClass="sort"/>
		<display:column sortable="true" property="ssn" title="SSN"  headerClass="sort"/>
	</display:table>
</div>
 --%>