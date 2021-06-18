package kr.co.life.community.dao;

import java.util.ArrayList;

import kr.co.life.community.dto.DatDto;

public interface DatDao {
	public void dat_write_ok(DatDto ddto);
	public ArrayList<DatDto> dat_list(int cid, int index);
	public void dat_update(DatDto ddto);
	public void dat_delete(int id);
	public Integer dat_cnt(int cid);
}
