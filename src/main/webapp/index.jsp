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
</head>


<body class="yui-skin-sam">
	<jsp:useBean id="wh" class="net.berinle.yuitour.Warehouse"></jsp:useBean>
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