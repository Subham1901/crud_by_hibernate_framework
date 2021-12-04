package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Details;
import com.handler.FactoryHandler;

/**
 * Servlet implementation class SaveData
 */
public class SaveData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String email=request.getParameter("email");
			String status=request.getParameter("status");
			String phone=request.getParameter("phone");
			String chk=request.getParameter("check");
			
	
			
		try {
			if(chk==null) {
				HttpSession session=request.getSession();
				session.setAttribute("message", "You are not confirmed our privacy policy");
				response.sendRedirect("index.jsp");
				return;
				 
			}
			
			
			
			Details d=new Details(fname,lname,email,new Date(),status,phone);
			
			Session s=FactoryHandler.getFact().openSession();
			Transaction t=s.beginTransaction();
			t.commit();
			s.save(d);
			
			s.close();
			
			
			
			HttpSession session=request.getSession();
			session.setAttribute("message", "Data Added Successfully");
			response.sendRedirect("index.jsp");
			return;
			 
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
