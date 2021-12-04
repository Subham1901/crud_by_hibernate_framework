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
 * Servlet implementation class EditData
 */
public class EditData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String status=request.getParameter("status");
		String phone=request.getParameter("phone");
		int id=Integer.parseInt(request.getParameter("id"));
		
		try {
			
			
			
			Session s=FactoryHandler.getFact().openSession();
			Details d=(Details)s.get(Details.class, id);
			d.setFname(fname);
			d.setEmail(email);
			d.setLname(lname);
			d.setStatus(status);
			d.setDate(new Date());
			d.setPhone(phone);
			Transaction t=s.beginTransaction();
			
			s.save(d);
			t.commit();
			s.close();
			
			
			
			HttpSession session=request.getSession();
			session.setAttribute("message", "Data Edited Successfully");
			response.sendRedirect("index.jsp");
			return;
			 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
