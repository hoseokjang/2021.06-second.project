package kr.co.life;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.life.community.dao.CommunityDao;
import kr.co.life.community.dao.MemberDao;
import kr.co.life.community.dto.CommunityDto;
import kr.co.life.community.dto.MemberDto;

@Controller
public class HomeController {
	
	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		// �����Խ��� 5��	
		CommunityDao cdao = sqlSession.getMapper(CommunityDao.class);
		ArrayList<CommunityDto> clist = cdao.main_commu();
		model.addAttribute("clist", clist);
		
		return "redirect:/main";
	}
	@RequestMapping("/main")
	public String main(Model model)
	{
		// �������� 5��
		
		// �����Խ��� 5��	
		CommunityDao cdao = sqlSession.getMapper(CommunityDao.class);
		ArrayList<CommunityDto> clist = cdao.main_commu();
		model.addAttribute("clist", clist);
		// ���� ������ 5��
		
		return "/main";
	}
	@RequestMapping("/introduce")
	public String introduce()
	{
		return "/intro/introduce";
	}
	@RequestMapping("/useway")
	public String useway()
	{
		return "/intro/useway";
	}
	
	
	@RequestMapping("login")
	public String login()
	{
		return "/login";
	}
	@RequestMapping("/login_ok")
	public String login_ok(MemberDto mdto, HttpSession session)
	{
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		MemberDto mdto2 = mdao.login_ok(mdto);
		session.setAttribute("userid", mdto2.getUserid());
		session.setAttribute("nickname", mdto2.getNickname());
		return "redirect:/";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/";
	}
}
