<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<%@ attribute name="color" required="false" rtexprvalue="true" %>
<%@ attribute name="size" required="false" rtexprvalue="true" %>

<p style="color:${color}; font-size:${size};">
<jsp:doBody />
</p>