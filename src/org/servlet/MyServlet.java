package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;


public class MyServlet extends HttpServlet {
	 public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
	        System.out.println("dopost123");
	        String t1 = request.getParameter("text1");
	        String t2 = request.getParameter("text2");
	        String t3 = request.getParameter("text3");
	        double tt1=Double.valueOf(t1.toString());
	        double tt3=Double.valueOf(t3.toString());
	        
	        double result = 0;
	        switch(t2){
	        case "+":
	        	result=tt1+tt3;
	        	break;
	        case "-":
	        	result=tt1-tt3;
	        	break;
	        case "*":
	        	result=tt1*tt3;
	        	break;
	        case "/":
	        	result=tt1/tt3;
	        	break;
	        }
	        String s=String.valueOf(result);
	        
	        System.out.println(s);
	        
	        

	        //向前台的页面输出结果
	        PrintWriter out=response.getWriter();
	        out.println(s);
	        out.close();
	      
	        
	        //request.setAttribute("str", s);
	        //request.getRequestDispatcher("/index.jsp").forward(request, response);
	    }
	 public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		 doPost(request,response);   
	    }
}
