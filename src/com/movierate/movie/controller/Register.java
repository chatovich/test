package com.movierate.movie.controller;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;

/**
 * Created by Yultos_ on 19.11.2016
 */

//@WebServlet(name = "Register", urlPatterns = { "/register" })
@MultipartConfig
public class Register extends HttpServlet {

    final static Logger LOGGER = LogManager.getLogger(Register.class);
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
        processRequest(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        // Create path components to save the file
        final String path = "file";
        final Part filePart = request.getPart("photo");
        final String fileName = getFileName(filePart);
        //final String fileName = "name.jpg";


        OutputStream out = null;
        InputStream filecontent = null;
        final PrintWriter writer = response.getWriter();

        try {
            File file = new File(request.getServletContext().getRealPath("/") + File.separator + path + File.separator + fileName);
            //File file = new File(System.getProperty("user.dir") + File.separator + path + File.separator + fileName);
            out = new FileOutputStream(file);
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }


            String filePath = path + File.separator + fileName;
            request.setAttribute("fileUploaded",true);
            request.setAttribute("fileNameSS",filePath);
            request.getRequestDispatcher("/jsp/reg.jsp").forward(request,response);

//            writer.println("New file " + fileName + " created at " + path + " (" + file.getAbsolutePath() + " )");
//            writer.print("<br><img src=\"" + path + File.separator + fileName + "\" alt=\"uploaded foto\">");
             LOGGER.log(Level.INFO, "File{0}being uploaded to {1}");
        } catch (FileNotFoundException fne) {
            writer.println(
                    "You either did not specify a file to upload or are " + "trying to upload a file to a protected or nonexistent " + "location.");
            writer.println("<br/> ERROR: " + fne.getMessage());

            // LOGGER.log(Level.SEVERE, "Problems during file upload. Error:
            // {0}", new Object[] { fne.getMessage() });
        } finally {
            if (out != null) {
                out.close();
            }
            if (filecontent != null) {
                filecontent.close();
            }
            if (writer != null) {
                writer.close();
            }
        }
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");

        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }

}
