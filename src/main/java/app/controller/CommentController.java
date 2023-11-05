package app.controller;

import app.model.Comment;
import app.service.CommentService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;

@WebServlet(name = "CommentController", value = "/comment")
public class CommentController extends HttpServlet {
    private CommentService commentService = new CommentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/test/test.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int authorId = Integer.parseInt(request.getParameter("authorId"));
        int postId = Integer.parseInt(request.getParameter("postId"));
        String content = request.getParameter("content");
        LocalDateTime createAt = LocalDateTime.now();
        Comment comment = new Comment(authorId, postId, content, createAt);
        commentService.add(comment);
    }
    public void addComment(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
    public void editComment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);
        Comment comment = commentService.findById(id);
        request.setAttribute("comment", comment);
    }
    public void deleteComment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        commentService.delete(id);
    }
}
