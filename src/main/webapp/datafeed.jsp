<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<%@page import="net.berinle.yuitour.Warehouse;"%>
<jsp:useBean id="wh" class="net.berinle.yuitour.Warehouse"/>

<!-- sample data format

{"recordsReturned":25,
    "totalRecords":1397,
    "startIndex":0,
    "sort":null,
    "dir":"asc",
    "pageSize":10,
    "records":[
        {"id":"0",
        "name":"xmlqoyzgmykrphvyiz",
        "date":"13-Sep-2002",
        "price":"8370",
        "number":"8056",
        "address":"qdfbc",
        "company":"taufrid",
        "desc":"pppzhfhcdqcvbirw",
        "age":"5512",
        "title":"zticbcd",
        "phone":"hvdkltabshgakjqmfrvxo",
        "email":"eodnqepua",
        "zip":"eodnqepua",
        "country":"pdibxicpqipbsgnxyjumsza"},
        ...
    ]
}
 -->

<json:object>
	<json:property name="recordsReturned" value="25"/>
	<json:property name="totalRecords" value="100"/>
	<json:property name="startIndex" value="0"/>
	<json:property name="sort" value="null"/>
	<json:property name="dir" value="asc"/>
	<json:property name="pageSize" value="10"/>
	
	<json:array name="records" var="record" items="${wh.persons}">
		<json:object>
			<json:property name="firstName" value="${record.firstName}"/>
			<json:property name="lastName" value="${record.lastName}"/>
			<json:property name="ssn" value="${record.ssn}"/>
		</json:object>
	</json:array>
</json:object>