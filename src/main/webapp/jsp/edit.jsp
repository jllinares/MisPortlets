<%@ taglib uri="http://java.sun.com/portlet_2_0"  prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="liferay-aui" %>
<%@ page import="com.liferay.portal.kernel.util.ParamUtil" %>
<%@ page import="com.liferay.portal.kernel.util.Validator" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<portlet:defineObjects/>
<portlet:actionURL var="editarSaludoURL">
	<portlet:param name="mvcPath" value="/jsp/view.jsp" />
</portlet:actionURL>
<liferay-aui:form action="<%=editarSaludoURL%>" method="post">
	<liferay-aui:input type="text" name="saludos" label="saludo.input" required="true" value="" helpMessage="saludo.help" placeholder="saludo.holder" />
	<liferay-aui:button type="submit" value="saludo.boton.salvar" />
</liferay-aui:form>
<portlet:renderURL var="devolverPaginaURL">
	<portlet:param name="mvcPath" value="/jsp/view.jsp" />
</portlet:renderURL>
<p>
	<a href="<%=devolverPaginaURL%>">Volver</a>
</p>