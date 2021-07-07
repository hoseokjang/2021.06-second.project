package kr.co.life;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.life.community.dao.CommunityDao;
import kr.co.life.community.dto.CommunityDto;
import kr.co.life.gongji.dao.GongjiListDao;
import kr.co.life.gongji.dao.GongjiNewsDao;
import kr.co.life.gongji.dto.GongjiListDto;
import kr.co.life.gongji.dto.GongjiNewsDto;
import kr.co.life.hfood.dao.HfoodDao;
import kr.co.life.hfood.dto.HfoodDto;
import kr.co.life.recipe.dao.MemberRecipeDao;
import kr.co.life.recipe.dao.RecipeDao;
import kr.co.life.recipe.dto.MemberRecipeDto;
import kr.co.life.recipe.dto.RecipeDto;

@Controller
public class HomeController {
	
	@Autowired
	public SqlSession sqlSession3;
	
	@Autowired
	public SqlSession sqlSession;
	
	@Autowired
	public SqlSession sqlSession2;
	
	@Autowired
	public SqlSession sqlSession5;
	
	@RequestMapping("/")
	public String home(Model model) {
		// �������� 5��
		GongjiListDao gdao = sqlSession.getMapper(GongjiListDao.class);
		ArrayList<GongjiListDto> glist = gdao.gongjimain();
		model.addAttribute("glist", glist);
		
		// �����Խ��� 5��
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		ArrayList<CommunityDto> clist = cdao.main_commu();
		model.addAttribute("clist", clist);

		// ���� ������ 5��
		MemberRecipeDao mrdao = sqlSession5.getMapper(MemberRecipeDao.class);
		ArrayList<MemberRecipeDto> mrlist = mrdao.mrmain();
		model.addAttribute("mrlist", mrlist);
		
		// ������ 5��
		RecipeDao rdao = sqlSession5.getMapper(RecipeDao.class);
		ArrayList<RecipeDto> rlist = rdao.recipemain();
		model.addAttribute("rlist", rlist);
		
		// �ǰ���ǰ ���� 5��
		HfoodDao hdao=sqlSession2.getMapper(HfoodDao.class);
		ArrayList<HfoodDto> hlist = hdao.hfoodmain(); 
		model.addAttribute("hlist",hlist);
		
		return "redirect:/main";
	}
	@RequestMapping("/main")
	public String main(Model model)
	{
		// �������� 5��
		GongjiListDao gdao = sqlSession.getMapper(GongjiListDao.class);
		ArrayList<GongjiListDto> glist = gdao.gongjimain();
		model.addAttribute("glist", glist);
		
		// �����Խ��� 5��
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		ArrayList<CommunityDto> clist = cdao.main_commu();
		model.addAttribute("clist", clist);

		// ���� ������ 5��
		MemberRecipeDao mrdao = sqlSession5.getMapper(MemberRecipeDao.class);
		ArrayList<MemberRecipeDto> mrlist = mrdao.mrmain();
		model.addAttribute("mrlist", mrlist);
		
		// ������ 5��
		RecipeDao rdao = sqlSession5.getMapper(RecipeDao.class);
		ArrayList<RecipeDto> rlist = rdao.recipemain();
		model.addAttribute("rlist", rlist);
		
		// �ǰ���ǰ ���� 5��
		HfoodDao hdao=sqlSession2.getMapper(HfoodDao.class);
		ArrayList<HfoodDto> hlist = hdao.hfoodmain(); 
		model.addAttribute("hlist",hlist);
		
		GongjiNewsDao gndao=sqlSession.getMapper(GongjiNewsDao.class);
		ArrayList<GongjiNewsDto> gnlist=gndao.news_list2();
		model.addAttribute("gnlist",gnlist);
		
		
//		return "redirect:/main";
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
	@RequestMapping("/statistics")
	public String stat()
	{
		return "/statistics/cause";
	}
}
