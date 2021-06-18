package kr.co.life.community.dao;

import java.util.ArrayList;

import kr.co.life.community.dto.CommunityDto;

public interface CommunityDao {
	public ArrayList<CommunityDto> commu_list(String csel, String cword, int index);
	public ArrayList<CommunityDto> commu_list1(String csel, String cword, int index);
	public ArrayList<CommunityDto> commu_list2(String csel, String cword, int index);
	public ArrayList<CommunityDto> commu_list3(String csel, String cword, int index);
	public Integer get_pagecnt();
	public void commu_write_ok(CommunityDto cdto);
	public void commu_readnum(int id);
	public CommunityDto commu_content(int id);
	public void commu_update_ok(CommunityDto cdto);
	public void commu_delete(int id);
	public ArrayList<CommunityDto> main_commu();
}
