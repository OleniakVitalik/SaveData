package com.inputMyData;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connect.ConnectionManagers;

/**
 * Servlet implementation class Creates
 */
@WebServlet("/Creates")
public class Creates extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Creates() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getParameter("url");
		String password = request.getParameter("password");
		String login = request.getParameter("login");
		String used = request.getParameter("used");

		Connection connection = ConnectionManagers.getConnection();

		try {
			if (url != null | password != null | login != null | used != null) {
				insertIntoDB(url, password, login, used, connection);
			}
		} catch (SQLException e) {
			System.out.println("No insert");
			e.printStackTrace();
		}
		request.getRequestDispatcher("/inputData.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

	private void insertIntoDB(String url, String password, String login, String used, Connection connection)
			throws SQLException {
		String insert = "insert into data.mydata (url,login,password,used) values(?,?,?,?)";
		java.sql.PreparedStatement prepSt = (PreparedStatement) connection.prepareStatement(insert);

		prepSt.setString(1, url);
		prepSt.setString(2, login);
		prepSt.setString(3, password);
		prepSt.setString(4, used);
		prepSt.execute();
	}
}
