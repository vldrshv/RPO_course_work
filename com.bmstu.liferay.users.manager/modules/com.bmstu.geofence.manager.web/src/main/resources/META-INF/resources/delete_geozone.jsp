<%@include file="/init.jsp"%>

<%
	Geozone geozone = null;
%>

<portlet:renderURL var="viewURL">
	<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:renderURL>

<portlet:actionURL name="deleteGeozone" var="deleteGeozoneURL" />

<aui:form action="<%=deleteGeozoneURL%>" name="<portlet:namespace />fm">

	<aui:model-context bean="<%=geozone%>"
		model="<%=Geozone.class%>" />

	<aui:fieldset>

		<aui:input name="geozoneId" type="clear"/>

	</aui:fieldset>

	<aui:button-row>

		<aui:button type="submit" value="delete"/>
		<aui:button type="cancel" onClick="<%= viewURL.toString() %>" />
	</aui:button-row>
	
</aui:form>