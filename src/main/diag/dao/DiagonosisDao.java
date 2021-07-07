package kr.co.life.diag.dao;

import java.util.ArrayList;

import kr.co.life.diag.dto.DiagonosisDto;
import kr.co.life.hfood.dto.HfoodDto;
import kr.co.life.recipe.dto.RecipeDto;

public interface DiagonosisDao {
	public DiagonosisDto list(String userid);
	public String nick(String userid);
	public ArrayList<RecipeDto> reco_rlist(Integer rctgval);
	public ArrayList<HfoodDto> reco_hlist(Integer hctgval);
}
