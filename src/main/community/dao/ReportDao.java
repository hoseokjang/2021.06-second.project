package kr.co.life.community.dao;

import java.util.ArrayList;

import kr.co.life.community.dto.ReportDto;

public interface ReportDao {
	public ArrayList<ReportDto> report_list();
	public void report_ok(ReportDto rdto);
	public void report_del(int id);
	public void commu_report_del(int cid);
}
