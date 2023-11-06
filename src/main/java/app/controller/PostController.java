package app.controller;

import app.model.Post;
import app.service.PostService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(name = "PostController", value = "/post")
public class PostController extends HttpServlet {
    private PostService postIService = new PostService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null) {
            if (session.getAttribute("idPost") != null) {
                // Nghia la lay 1 post theo idPost
                // Action co chua idPost = 1, vi du localhost/post?idPost=1
                int idPost = (int) session.getAttribute("idPost");
                // Service lay ra Post theo id
                Post post = postIService.findById(idPost);
                if (post != null) {
                    // Tao 1 dispatcher de van chuyen Post do sang giao dien detail_post.jsp
                    RequestDispatcher dispatcher = req.getRequestDispatcher("/detail_post.jsp");
                    req.setAttribute("detailPost", post);
                    dispatcher.forward(req, resp);
                } else {
                    // TODO: Dieu huong sang trang Error.jsp
                }
            } else {
                // Nghia la lay tat ca Post
                List<Post> posts = postIService.findAll();
                if (!posts.isEmpty()) {
                    // Tao 1 dispatcher de van chuyen danh sach Posts do sang giao dien list_post.jsp
                    RequestDispatcher dispatcher = req.getRequestDispatcher("/list_post.jsp");
                    req.setAttribute("posts", posts);
                    dispatcher.forward(req, resp);
                } else {
                    // TODO: Dieu huong sang trang Empty.jsp
                    //  hoac van la list_post.jsp nhung show thong bao khong co post nao ca
                }
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int author_id = Integer.parseInt(req.getParameter("author_id"));
        String content = req.getParameter("content");
        String img_url = req.getParameter("img_url");
        LocalDateTime created_at = LocalDateTime.parse(req.getParameter("created_at"));
//        LocalDateTime updated_at = LocalDateTime.parse(req.getParameter("updated_at"));
        Post post = new Post(author_id, content, img_url, created_at, null);
        postIService.add(post);
        resp.sendRedirect("/home");
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        int author_id = Integer.parseInt(req.getParameter("author_id"));
        String content = req.getParameter("content");
//        String img_url = req.getParameter("img_url");
//        LocalDateTime created_at = LocalDateTime.parse(req.getParameter("created_at"));
        LocalDateTime updated_at = LocalDateTime.parse(req.getParameter("updated_at"));
        Post post = new Post(id, author_id, content, null, null, updated_at);
        postIService.edit(post, id);
        resp.sendRedirect("/home");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }


    private void editPost(HttpServletRequest req, HttpServletResponse resp) {

    }

    private void addPost(HttpServletRequest req, HttpServletResponse resp) {

    }
}
