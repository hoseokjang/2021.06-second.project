package kr.co.life.community.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.life.community.dao.CommunityDao;
import kr.co.life.community.dao.DatDao;
import kr.co.life.community.dao.ReportDao;
import kr.co.life.community.dto.CommunityDto;
import kr.co.life.community.dto.DatDto;
import kr.co.life.community.dto.ReportDto;

@Controller
public class CommunityController {

	@Autowired
	public SqlSession sqlSession3;
	
	@RequestMapping("/commu_write")
	public String commu_write()
	{
		return "/community/commu_write";
	}
	@RequestMapping("/commu_write_ok")
	public String commu_write_ok(HttpServletRequest request) throws Exception
	{
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		
		request.setCharacterEncoding("utf-8");
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		CommunityDto cdto = new CommunityDto();
		cdto.setNickname(nickname);
		cdto.setTitle(title);
		cdto.setContent(content);
		
		cdao.commu_write_ok(cdto);
		return "redirect:/commu_list";
	}
	@RequestMapping("/commu_list")
	public String commu_list(Model model, HttpServletRequest request) throws Exception
	{
		request.setCharacterEncoding("utf-8");
		// order by
		int chk;
		if(request.getParameter("chk") == null)
		{
			chk = 0;
		}
		else
		{
			chk = Integer.parseInt(request.getParameter("chk"));
		}
		// page
		int index;
		int page;
		if(request.getParameter("page") == null)
		{
			page=1;
			index=0;
		}
		else
		{
			page = Integer.parseInt(request.getParameter("page"));
			index = (page-1)*10;
		}
		int pstart = page/10;
		if(page%10 == 0)
			pstart = pstart-1;
		pstart = (pstart*10)+1;
		int pend = pstart+9;
		// 검색어
		String csel, cword;
		if(request.getParameter("csel") == null)
			csel = "title";
		else
			csel = request.getParameter("csel");
		if(request.getParameter("cword") == null)
			cword = "";
		else
			cword = request.getParameter("cword");
		
		ArrayList<CommunityDto> list = null;
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		if(chk == 0)
		{
			list= cdao.commu_list(csel, cword, index);
		}
		else if(chk == 1)
		{
			list= cdao.commu_list1(csel, cword, index);
		}
		else if(chk == 2)
		{
			list= cdao.commu_list2(csel, cword, index);
		}
		else if(chk == 3)
		{
			list= cdao.commu_list3(csel, cword, index);
		}
		model.addAttribute("list",list);
		model.addAttribute("chk",chk);
		
		model.addAttribute("pstart",pstart);
		model.addAttribute("page",page);
		Integer pagecnt = cdao.get_pagecnt();
		if(pend>pagecnt)
		{
			pend=pagecnt;
		}
		model.addAttribute("pagecnt",pagecnt);
		model.addAttribute("pend",pend);
		model.addAttribute("cword",cword);
		model.addAttribute("csel",csel);
		return "/community/commu_list";
	}
	@RequestMapping("/commu_readnum")
	public String commu_readnum(HttpServletRequest request, Model model)
	{
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		int id = Integer.parseInt(request.getParameter("id"));
		cdao.commu_readnum(id);
		return "redirect:/commu_content?id="+id;
	}
	@RequestMapping("/commu_content")
	public String commu_content(HttpServletRequest request, Model model)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		CommunityDto cdto = cdao.commu_content(id);
		model.addAttribute("cdto", cdto);
		
		// page
		int index;
		int page;
		if(request.getParameter("page") == null)
		{
			page=1;
			index=0;
		}
		else
		{
			page = Integer.parseInt(request.getParameter("page"));
			index = (page-1)*10;
		}
		int pstart = page/10;
		if(page%10 == 0)
			pstart = pstart-1;
		pstart = (pstart*10)+1;
		int pend = pstart+9;
		
		DatDao ddao = sqlSession3.getMapper(DatDao.class);
		int cid = id;
		ArrayList<DatDto> dlist = ddao.dat_list(cid, index);
		model.addAttribute("dlist",dlist);
		
		Integer dat_cnt = ddao.dat_cnt(cid);
		if(pend>dat_cnt)
		{
			pend=dat_cnt;
		}
		model.addAttribute("page",page);
		model.addAttribute("pstart",pstart);
		model.addAttribute("dat_cnt",dat_cnt);
		model.addAttribute("pend",pend);
		
		return "/community/commu_content";
	}
	@RequestMapping("/commu_update")
	public String commu_update(HttpServletRequest request, Model model)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		CommunityDto cdto = cdao.commu_content(id);
		model.addAttribute("cdto", cdto);
		return "/community/commu_update";
	}
	@RequestMapping("/commu_update_ok")
	public String commu_update_ok(CommunityDto cdto, HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		cdao.commu_update_ok(cdto);
		return "redirect:/commu_content?id="+id;
	}
	@RequestMapping("/commu_delete")
	public String commu_delete(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		CommunityDao cdao = sqlSession3.getMapper(CommunityDao.class);
		cdao.commu_delete(id);
		return "redirect:/commu_list";
	}
	
	// report
	@RequestMapping("/report_ok")
	public void report_ok(HttpServletRequest request, PrintWriter out) throws Exception
	{
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));
		String userid = request.getParameter("userid");
		ReportDao rdao = sqlSession3.getMapper(ReportDao.class);
		ReportDto rdto = new ReportDto();
		rdto.setCid(id);
		rdto.setUserid(userid);
		rdao.report_ok(rdto);
		out.print("1");
	}
	@RequestMapping("/report")
	public String report(Model model)
	{
		ReportDao rdao = sqlSession3.getMapper(ReportDao.class);
		ArrayList<ReportDto> list = rdao.report_list();
		model.addAttribute("list",list);
		return "/community/report";
	}
	@RequestMapping("/report_delete")
	public String report_delete(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		int cid = Integer.parseInt(request.getParameter("cid"));
		ReportDao rdao = sqlSession3.getMapper(ReportDao.class);
		rdao.commu_report_del(cid);
		rdao.report_del(id);
		
		return "redirect:/report";
	}
}
