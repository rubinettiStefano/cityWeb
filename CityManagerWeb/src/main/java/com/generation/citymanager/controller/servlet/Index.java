package com.generation.citymanager.controller.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.generation.citymanager.model.database.Database;
import com.generation.citymanager.model.database.MockDatabase;
import com.generation.citymanager.model.entities.Citizen;
import com.generation.citymanager.model.entities.City;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmd = request.getParameter("cmd");
		if(cmd==null) cmd = "";
		Database database = new MockDatabase();
		
		switch(cmd)
		{
			case "list":
			{
				List<City> cities = database.getCities();
				request.setAttribute("cities", cities);
				
				request.getRequestDispatcher("CityList.jsp").forward(request, response);
			}
			break;
			case "city":
			{
				String ID = request.getParameter("ID");
				request.setAttribute("city", database.getCity(ID));
				request.getRequestDispatcher("CityDetail.jsp").forward(request, response);
			}
			break;
			case "formnewcity":
				response.getWriter().append("Qui dovrebbe comparire la form per inserire una nuova città");
			break;
			case "searchcitizen":
				String key = request.getParameter("key");
				List<Citizen> citizens = database.getCitizen(key);
				request.setAttribute("citizens", citizens);
				request.getRequestDispatcher("CitizenSearch.jsp").forward(request, response);
			break;
			case "findhome":
				request.setAttribute(	"bodies" , 
										database.getFreeHouses
    										(
												request.getParameter("cityID"),
												Integer.parseInt(request.getParameter("minsize"))
    										)
								  );
				request.getRequestDispatcher("FreeHouses.jsp").forward(request, response);
			break;
			default:
				response.getWriter().append("Comando non riconosciuto");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
