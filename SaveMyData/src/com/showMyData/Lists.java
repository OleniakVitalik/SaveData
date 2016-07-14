package com.showMyData;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connect.ConnectionManagers;

/**
 * Servlet implementation class Lists
 */
@WebServlet("/Lists")
public class Lists extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Lists() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			Connection connection = ConnectionManagers.getConnection();
			ResultSet resSet = selectToDB(connection);

			StringBuilder urlBuild = new StringBuilder();
			StringBuilder logBuild = new StringBuilder();
			StringBuilder passBuild = new StringBuilder();
			StringBuilder usedBuild = new StringBuilder();

			while (resSet.next()) {
				urlBuild.append(resSet.getString("url") + "<br>");
				logBuild.append(resSet.getString("login") + "<br>");
				passBuild.append(resSet.getString("password") + "<br>");
				usedBuild.append(resSet.getString("used") + "<br>");
			}

			String urlTab = urlBuild.toString();
			String logTab = logBuild.toString();
			String pasTab = passBuild.toString();
			String usTab = usedBuild.toString();

			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			HttpSession ses = request.getSession();

			ses.setAttribute("url", urlTab);
			ses.setAttribute("login", logTab);
			ses.setAttribute("password", pasTab);
			ses.setAttribute("used", usTab);
			request.getRequestDispatcher("/showData.jsp").forward(request, response);

		} catch (Exception e) {
			System.out.println("No conection");
		}
	}

	private ResultSet selectToDB(Connection connection) throws SQLException {
		String insert = "SELECT * FROM data.mydata";
		java.sql.PreparedStatement prepSt = (PreparedStatement) connection.prepareStatement(insert);
		ResultSet resSet = prepSt.executeQuery();
		prepSt.execute();
		return resSet;
	}

}
