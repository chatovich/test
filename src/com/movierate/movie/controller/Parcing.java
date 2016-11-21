package com.movierate.movie.controller;

import com.movierate.parsing.entity.Candy;
import com.movierate.parsing.entity.Caramel;
import com.movierate.parsing.runner.ParserRunner;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by Yultos_ on 21.11.2016
 */
@MultipartConfig
public class Parcing extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Parcing() {
        super();
        // TODO Auto-generated constructor stub
    }

    //final static Logger LOGGER = LogManager.getLogger(Parsing.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String parsingType = request.getParameter("selectbasic");
//        final PrintWriter writer = response.getWriter();
//        writer.print(parsingType);

        //        Create path components to save the file
        final String path = "file"+ File.separator + "parse";
        final Part filePart = request.getPart("file");
        final String fileName = getFileName(filePart);

        OutputStream out = null;
        InputStream filecontent = null;
        final PrintWriter writer = response.getWriter();
        writer.print(parsingType);

        try {
            File file = new File(request.getServletContext().getRealPath("/") + File.separator + path + File.separator + fileName);
            out = new FileOutputStream(file);
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }

            Set<Candy> candies = ParserRunner.createList(file.getAbsolutePath(), parsingType);
            List<Candy> caremels = new ArrayList<>();
            List<Candy> chocolates = new ArrayList<>();

            for (Candy candy : candies) {
                if (candy instanceof Caramel){
                    caremels.add(candy);
                } else {
                    chocolates.add(candy);
                }
            }
            request.setAttribute("caramels", caremels);
            request.setAttribute("chocolates", chocolates);
            request.setAttribute("parsingType", parsingType);
            request.setAttribute("listsUploaded", true);
            request.getRequestDispatcher("parse.jsp").forward(request,response);

            //writer.println("New file " + fileName + " created at " + path + " (" + file.getAbsolutePath() + " )");
            //writer.print("<br><img src=\"" + path + File.separator + fileName + "\" alt=\"uploaded foto\">");
             //LOGGER.log(Level.INFO, "File{0}being uploaded to {1}");
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



        //check parsing with file and output works

//        Set<Candy> candies = ParserRunner.createList("file/candies.xml", "sax");
//        List<Candy> caremels = new ArrayList<>();
//        List<Candy> chocolates = new ArrayList<>();
//        for (Candy candy : candies) {
//            if (candy instanceof Caramel){
//                caremels.add(candy);
//            } else {
//                chocolates.add(candy);
//            }
//        }
//        request.setAttribute("caramels", caremels);
//        request.setAttribute("chocolates", chocolates);
//        request.setAttribute("listsUploaded", true);
//        request.getRequestDispatcher("parse.jsp").forward(request,response);

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

