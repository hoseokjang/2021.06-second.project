package kr.co.life.community.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.life.community.dao.DatDao;
import kr.co.life.community.dto.DatDto;

@Controller
public class DatController {

	@Autowired
	public SqlSession sqlSession3;
	
	@RequestMapping("/dat_write_ok")
	public String dat_write(HttpServletRequest request) throws Exception
	{
		DatDao ddao = sqlSession3.getMapper(DatDao.class);
		
		request.setCharacterEncoding("utf-8");
		int cid = Integer.parseInt(request.getParameter("cid"));
		String nickname = request.getParameter("nickname");
		String content = request.getParameter("content");
		
		DatDto ddto = new DatDto();
		ddto.setCid(cid);
		ddto.setNickname(nickname);
		ddto.setContent(content);
		
		ddao.dat_write_ok(ddto);
		return "redirect:/commu_content?id="+cid+"#commu_dat_table";
	}
	@RequestMapping("/dat_update")
	public String dat_update(HttpServletRequest request) throws Exception
	{
		DatDao ddao = sqlSession3.getMapper(DatDao.class);
		
		request.setCharacterEncoding("utf-8");
		int cid = Integer.parseInt(request.getParameter("cid"));
		int id = Integer.parseInt(request.getParameter("id"));
		String content = request.getParameter("content");
		DatDto ddto = new DatDto();
		ddto.setId(id);
		ddto.setContent(content);
		ddao.dat_update(ddto);
		return "redirect:/commu_content?id="+cid+"#commu_dat_table";
	}
	@RequestMapping("/dat_delete")
	public String dat_delete(HttpServletRequest request) throws Exception
	{
		DatDao ddao = sqlSession3.getMapper(DatDao.class);
		int id = Integer.parseInt(request.getParameter("id"));
		int cid = Integer.parseInt(request.getParameter("cid"));
		ddao.dat_delete(id);
		return "redirect:/commu_content?id="+cid+"#commu_dat_table";
	}
}
