package com.liferay.todo;

import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

import javax.portlet.*;
import java.io.IOException;

/**
 * Created by Mateo on 7/13/2017.
 */
public class TodoPortlet extends MVCPortlet {

	public void doView(RenderRequest renderRequest, RenderResponse renderResponse)

		throws IOException, PortletException {
			System.out.println("Render view of Todo Portlet");

			super.doView(renderRequest, renderResponse);
	}

	public void formAction(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException, PortletException {
			try {
				System.out.println("Process action for contact form works");

				String name = ParamUtil.getString(actionRequest, "name", "No name received");

				String lastName = ParamUtil.getString(actionRequest, "last-name", "No last name received");

				String email = ParamUtil.getString(actionRequest, "email", "No email received");

				String birthday = ParamUtil.getString(actionRequest, "birthday", "No birthday received");

				String comment = ParamUtil.getString(actionRequest, "comment", "No comment received");

				if (comment != "") {
					System.out.println("Form results" + "\n" +
							"name: " + name + "\n" +
							"last name: " + lastName + "\n" +
							"email: " + email + "\n" +
							"birthday: " + birthday + "\n" +
							"comment: " + comment);

					SessionMessages.add(actionRequest, "success");
				} else {
					SessionErrors.add(actionRequest, "error");

					SessionMessages.add(actionRequest, PortalUtil.getPortletId(actionRequest) + SessionMessages.KEY_SUFFIX_HIDE_DEFAULT_ERROR_MESSAGE);
				}

				actionResponse.setRenderParameter("mvcPath", "/contact.jsp");
			}

			catch (Exception e) {
				e.printStackTrace();
			}
	}
}