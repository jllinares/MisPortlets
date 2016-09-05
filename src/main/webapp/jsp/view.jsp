<%@ page import="com.liferay.portal.kernel.servlet.SessionMessages" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<portlet:defineObjects />
<liferay-ui:success key="success" message="saludo.success" />
<p>
	<%=(String) renderRequest.getPreferences().getValue("saludos", "Saludo no configurado")%>
</p>
<portlet:renderURL var="editarSaludosURL">
	<portlet:param name="mvcPath" value="/jsp/edit.jsp"/>
</portlet:renderURL>
<p>
	<a href="<%=editarSaludosURL%>" >Editar Saludo</a>
</p>