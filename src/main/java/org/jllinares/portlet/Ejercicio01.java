package org.jllinares.portlet;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletPreferences;

import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class Ejercicio01
 */
public class Ejercicio01 extends MVCPortlet {

	/* (non-Javadoc)
	 * @see com.liferay.util.bridges.mvc.MVCPortlet#processAction(javax.portlet.ActionRequest, javax.portlet.ActionResponse)
	 */
	@Override
	public void processAction(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException, PortletException {
		System.out.println("Se esta ejecutando la accion processAction de mi portlet en la clase " + this.getClass().getSimpleName());
		PortletPreferences preferencias = actionRequest.getPreferences();
		String saludos = actionRequest.getParameter("saludos");
		
		if(saludos != null) {
			preferencias.setValue("saludos", saludos);
			preferencias.store();
		}
		
		SessionMessages.add(actionRequest, "success");
		super.processAction(actionRequest, actionResponse);
	}
}