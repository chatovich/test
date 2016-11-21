package com.movierate.movie.controller;

import com.movierate.movie.command.CommandType;
import com.movierate.movie.command.ICommand;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Yultos_ on 20.11.2016
 */
public class Controller extends HttpServlet{

    private static final long serialVersionUID = 1L;
    private static final String COMMAND = "command";

    public Controller() {
        super();

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String commandName = request.getParameter(COMMAND);
        CommandType commandType = CommandType.valueOf(commandName.toUpperCase());
        ICommand command  = commandType.getCommand();
        String pageName = command.execute(request);
        request.getRequestDispatcher(pageName).forward(request, response);
        //request.getRequestDispatcher("/index.jsp").forward(request, response);

    }

}
