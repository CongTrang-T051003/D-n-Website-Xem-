package edu.poly.admin;

import java.io.IOException;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.FavoriteDAO;
import edu.poly.dao.VideoDAO;
import edu.poly.model.Favorite;
import edu.poly.model.User;
import edu.poly.model.Video;

/**
 * Servlet implementation class detail
 */
@WebServlet("/admin/detail")
public class DetailVideoManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
	User user = new User();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = SessionUtils.getLoginedUsername(request);
		String videoId = request.getParameter("videoId");
		VideoDAO dao = new VideoDAO();
		Video video = dao.findById(videoId);
		if (username != null) {
			FavoriteDAO favdao = new FavoriteDAO();
			Favorite fav = favdao.findOneByUserIdAndVideoId(username, videoId);
			request.setAttribute("favorite", fav);
			request.setAttribute("username", username);
		} else {
			request.getRequestDispatcher("/login").forward(request, response);
			return;
		}
		request.setAttribute("video", video);
		PageInfo.prepareAndForward(request, response, PageType.DETAIL_VIDEO_MANAGEMENT_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
