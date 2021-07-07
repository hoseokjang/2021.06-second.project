package kr.co.life.diag.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.life.diag.dao.DiagonosisDao;
import kr.co.life.diag.dao.SymptomDao;
import kr.co.life.diag.dto.DiagonosisDto;
import kr.co.life.diag.dto.SymptomDto;
import kr.co.life.hfood.dto.HfoodDto;
import kr.co.life.recipe.dto.RecipeDto;

@Controller
public class SymptomController {
	@Autowired
	public SqlSession sqlSession6;
	

	@RequestMapping("/self_diagnose")
	public String selfdiag_main() {
		
		return "/self_diagnose/self_diag";
	}

	@RequestMapping("/self_diag_select")
	public String self_diag_select(HttpServletRequest request, Model model) {
		 String category = request.getParameter("category");
		 model.addAttribute("category", category);
		 return "/self_diagnose/self_diag_select";
	}
	
	@RequestMapping("/diag_insert_ok")
	public String diag_insert_ok(HttpServletRequest request) throws Exception
	{
		SymptomDao sdao = sqlSession6.getMapper(SymptomDao.class);
		SymptomDto sdto = new SymptomDto();
		
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userid");
		sdto.setUserid(userid);
		int itching = Integer.parseInt(request.getParameter("itching"));
		sdto.setItching(itching);
		int skin_rash = Integer.parseInt(request.getParameter("skin_rash"));
		sdto.setSkin_rash(skin_rash);
		int continuous_sneezing = Integer.parseInt(request.getParameter("continuous_sneezing"));
		sdto.setContinuous_sneezing(continuous_sneezing);
		int chills = Integer.parseInt(request.getParameter("chills"));
		sdto.setChills(chills);
		int joint_pain = Integer.parseInt(request.getParameter("joint_pain"));
		sdto.setJoint_pain(joint_pain);
		int stomach_pain = Integer.parseInt(request.getParameter("stomach_pain"));
		sdto.setStomach_pain(stomach_pain);
		int acidity = Integer.parseInt(request.getParameter("acidity"));
		sdto.setAcidity(acidity);
		int ulcers_on_tongue = Integer.parseInt(request.getParameter("ulcers_on_tongue"));
		sdto.setUlcers_on_tongue(ulcers_on_tongue);
		int vomiting = Integer.parseInt(request.getParameter("vomiting"));
		sdto.setVomiting(vomiting);
		int burning_micturition = Integer.parseInt(request.getParameter("burning_micturition"));
		sdto.setBurning_micturition(burning_micturition);
		int fatigue = Integer.parseInt(request.getParameter("fatigue"));
		sdto.setFatigue(fatigue);
		int anxiety = Integer.parseInt(request.getParameter("anxiety"));
		sdto.setAnxiety(anxiety);
		int weight_loss = Integer.parseInt(request.getParameter("weight_loss"));
		sdto.setWeight_loss(weight_loss);
		int restlessness = Integer.parseInt(request.getParameter("restlessness"));
		sdto.setRestlessness(restlessness);
		int lethargy = Integer.parseInt(request.getParameter("lethargy"));
		sdto.setLethargy(lethargy);
		int irregular_sugar_level = Integer.parseInt(request.getParameter("irregular_sugar_level"));
		sdto.setIrregular_sugar_level(irregular_sugar_level);
		int cough = Integer.parseInt(request.getParameter("cough"));
		sdto.setCough(cough);
		int high_fever = Integer.parseInt(request.getParameter("high_fever"));
		sdto.setHigh_fever(high_fever);
		int sunken_eyes = Integer.parseInt(request.getParameter("sunken_eyes"));
		sdto.setSunken_eyes(sunken_eyes);
		int breathlessness = Integer.parseInt(request.getParameter("breathlessness"));
		sdto.setBreathlessness(breathlessness);
		int sweating = Integer.parseInt(request.getParameter("sweating"));
		sdto.setSweating(sweating);
		int dehydration = Integer.parseInt(request.getParameter("dehydration"));
		sdto.setDehydration(dehydration);
		int indigestion = Integer.parseInt(request.getParameter("indigestion"));
		sdto.setIndigestion(indigestion);
		int headache = Integer.parseInt(request.getParameter("headache"));
		sdto.setHeadache(headache);
		int yellowish_skin = Integer.parseInt(request.getParameter("yellowish_skin"));
		sdto.setYellowish_skin(yellowish_skin);
		int dark_urine = Integer.parseInt(request.getParameter("dark_urine"));
		sdto.setDark_urine(dark_urine);
		int nausea = Integer.parseInt(request.getParameter("nausea"));
		sdto.setNausea(nausea);
		int loss_of_appetite = Integer.parseInt(request.getParameter("loss_of_appetite"));
		sdto.setLoss_of_appetite(loss_of_appetite);
		int back_pain = Integer.parseInt(request.getParameter("back_pain"));
		sdto.setBack_pain(back_pain);
		int constipation = Integer.parseInt(request.getParameter("constipation"));
		sdto.setConstipation(constipation);
		int abdominal_pain = Integer.parseInt(request.getParameter("abdominal_pain"));
		sdto.setAbdominal_pain(abdominal_pain);
		int diarrhoea = Integer.parseInt(request.getParameter("diarrhoea"));
		sdto.setDiarrhoea(diarrhoea);
		int mild_fever = Integer.parseInt(request.getParameter("mild_fever"));
		sdto.setMild_fever(mild_fever);
		int yellow_urine = Integer.parseInt(request.getParameter("yellow_urine"));
		sdto.setYellow_urine(yellow_urine);
		int yellowing_of_eyes = Integer.parseInt(request.getParameter("yellowing_of_eyes"));
		sdto.setYellowing_of_eyes(yellowing_of_eyes);
		int acute_liver_failure = Integer.parseInt(request.getParameter("acute_liver_failure"));
		sdto.setAcute_liver_failure(acute_liver_failure);
		int swelling_of_stomach = Integer.parseInt(request.getParameter("swelling_of_stomach"));
		sdto.setSwelling_of_stomach(swelling_of_stomach);
		int swelled_lymph_nodes = Integer.parseInt(request.getParameter("swelled_lymph_nodes"));
		sdto.setSwelled_lymph_nodes(swelled_lymph_nodes);
		int malaise = Integer.parseInt(request.getParameter("malaise"));
		sdto.setMalaise(malaise);
		int blurred_and_distorted_vision = Integer.parseInt(request.getParameter("blurred_and_distorted_vision"));
		sdto.setBlurred_and_distorted_vision(blurred_and_distorted_vision);
		int phlegm = Integer.parseInt(request.getParameter("phlegm"));
		sdto.setPhlegm(phlegm);
		int throat_irritation = Integer.parseInt(request.getParameter("throat_irritation"));
		sdto.setThroat_irritation(throat_irritation);
		int redness_of_eyes = Integer.parseInt(request.getParameter("redness_of_eyes"));
		sdto.setRedness_of_eyes(redness_of_eyes);
		int sinus_pressure = Integer.parseInt(request.getParameter("sinus_pressure"));
		sdto.setSinus_pressure(sinus_pressure);
		int runny_nose = Integer.parseInt(request.getParameter("runny_nose"));
		sdto.setRunny_nose(runny_nose);
		int congestion = Integer.parseInt(request.getParameter("congestion"));
		sdto.setCongestion(congestion);
		int chest_pain = Integer.parseInt(request.getParameter("chest_pain"));
		sdto.setChest_pain(chest_pain);
		int weakness_in_limbs = Integer.parseInt(request.getParameter("weakness_in_limbs"));
		sdto.setWeakness_in_limbs(weakness_in_limbs);
		int pain_during_bowel_movements = Integer.parseInt(request.getParameter("pain_during_bowel_movements"));
		sdto.setPain_during_bowel_movements(pain_during_bowel_movements);
		int pain_in_anal_region = Integer.parseInt(request.getParameter("pain_in_anal_region"));
		sdto.setPain_in_anal_region(pain_in_anal_region);
		int bloody_stool = Integer.parseInt(request.getParameter("bloody_stool"));
		sdto.setBloody_stool(bloody_stool);
		int irritation_in_anus = Integer.parseInt(request.getParameter("irritation_in_anus"));
		sdto.setIrritation_in_anus(irritation_in_anus);
		int neck_pain = Integer.parseInt(request.getParameter("neck_pain"));
		sdto.setNeck_pain(neck_pain);
		int dizziness = Integer.parseInt(request.getParameter("dizziness"));
		sdto.setDizziness(dizziness);
		int cramps = Integer.parseInt(request.getParameter("cramps"));
		sdto.setCramps(cramps);
		int bruising = Integer.parseInt(request.getParameter("bruising"));
		sdto.setBruising(bruising);
		int obesity = Integer.parseInt(request.getParameter("obesity"));
		sdto.setObesity(obesity);
		int swollen_legs = Integer.parseInt(request.getParameter("swollen_legs"));
		sdto.setSwollen_legs(swollen_legs);
		int swollen_blood_vessels = Integer.parseInt(request.getParameter("swollen_blood_vessels"));
		sdto.setSwollen_blood_vessels(swollen_blood_vessels);
		int excessive_hunger = Integer.parseInt(request.getParameter("excessive_hunger"));
		sdto.setExcessive_hunger(excessive_hunger);
		int drying_and_tingling_lips = Integer.parseInt(request.getParameter("drying_and_tingling_lips"));
		sdto.setDrying_and_tingling_lips(drying_and_tingling_lips);
		int slurred_speech = Integer.parseInt(request.getParameter("slurred_speech"));
		sdto.setSlurred_speech(slurred_speech);
		int knee_pain = Integer.parseInt(request.getParameter("knee_pain"));
		sdto.setKnee_pain(knee_pain);
		int hip_joint_pain = Integer.parseInt(request.getParameter("hip_joint_pain"));
		sdto.setHip_joint_pain(hip_joint_pain);
		int muscle_weakness = Integer.parseInt(request.getParameter("muscle_weakness"));
		sdto.setMuscle_weakness(muscle_weakness);
		int stiff_neck = Integer.parseInt(request.getParameter("stiff_neck"));
		sdto.setStiff_neck(stiff_neck);
		int swelling_joints = Integer.parseInt(request.getParameter("swelling_joints"));
		sdto.setSwelling_joints(swelling_joints);
		int movement_stiffness = Integer.parseInt(request.getParameter("movement_stiffness"));
		sdto.setMovement_stiffness(movement_stiffness);
		int spinning_movements = Integer.parseInt(request.getParameter("spinning_movements"));
		sdto.setSpinning_movements(spinning_movements);
		int loss_of_balance = Integer.parseInt(request.getParameter("loss_of_balance"));
		sdto.setLoss_of_balance(loss_of_balance);
		int unsteadiness = Integer.parseInt(request.getParameter("unsteadiness"));
		sdto.setUnsteadiness(unsteadiness);
		int weakness_of_one_body_side = Integer.parseInt(request.getParameter("weakness_of_one_body_side"));
		sdto.setWeakness_of_one_body_side(weakness_of_one_body_side);
		int loss_of_smell = Integer.parseInt(request.getParameter("loss_of_smell"));
		sdto.setLoss_of_smell(loss_of_smell);
		int bladder_discomfort = Integer.parseInt(request.getParameter("bladder_discomfort"));
		sdto.setBladder_discomfort(bladder_discomfort);
		int foul_smell_of_urine = Integer.parseInt(request.getParameter("foul_smell_of_urine"));
		sdto.setFoul_smell_of_urine(foul_smell_of_urine);
		int continuous_feel_of_urine = Integer.parseInt(request.getParameter("continuous_feel_of_urine"));
		sdto.setContinuous_feel_of_urine(continuous_feel_of_urine);
		int passage_of_gases = Integer.parseInt(request.getParameter("passage_of_gases"));
		sdto.setPassage_of_gases(passage_of_gases);
		int internal_itching = Integer.parseInt(request.getParameter("internal_itching"));
		sdto.setInternal_itching(internal_itching);
		int depression = Integer.parseInt(request.getParameter("depression"));
		sdto.setDepression(depression);
		int irritability = Integer.parseInt(request.getParameter("irritability"));
		sdto.setIrritability(irritability);
		int muscle_pain = Integer.parseInt(request.getParameter("muscle_pain"));
		sdto.setMuscle_pain(muscle_pain);
		int altered_sensorium = Integer.parseInt(request.getParameter("altered_sensorium"));
		sdto.setAltered_sensorium(altered_sensorium);
		int increased_appetite = Integer.parseInt(request.getParameter("increased_appetite"));
		sdto.setIncreased_appetite(increased_appetite);
		int polyuria = Integer.parseInt(request.getParameter("polyuria"));
		sdto.setPolyuria(polyuria);
		int family_history = Integer.parseInt(request.getParameter("family_history"));
		sdto.setFamily_history(family_history);
		int lack_of_concentration = Integer.parseInt(request.getParameter("lack_of_concentration"));
		sdto.setLack_of_concentration(lack_of_concentration);
		int visual_disturbances = Integer.parseInt(request.getParameter("visual_disturbances"));
		sdto.setVisual_disturbances(visual_disturbances);
		int receiving_blood_transfusion = Integer.parseInt(request.getParameter("receiving_blood_transfusion"));
		sdto.setReceiving_blood_transfusion(receiving_blood_transfusion);
		int receiving_unsterile_injections = Integer.parseInt(request.getParameter("receiving_unsterile_injections"));
		sdto.setReceiving_unsterile_injections(receiving_unsterile_injections);
		int coma = Integer.parseInt(request.getParameter("coma"));
		sdto.setComa(coma);
		int stomach_bleeding = Integer.parseInt(request.getParameter("stomach_bleeding"));
		sdto.setStomach_bleeding(stomach_bleeding);
		int distention_of_abdomen = Integer.parseInt(request.getParameter("distention_of_abdomen"));
		sdto.setDistention_of_abdomen(distention_of_abdomen);
		int history_of_alcohol_consumption = Integer.parseInt(request.getParameter("history_of_alcohol_consumption"));
		sdto.setHistory_of_alcohol_consumption(history_of_alcohol_consumption);
		int fluid_overload = Integer.parseInt(request.getParameter("fluid_overload"));
		sdto.setFluid_overload(fluid_overload);
		int prominent_veins_on_calf = Integer.parseInt(request.getParameter("prominent_veins_on_calf"));
		sdto.setProminent_veins_on_calf(prominent_veins_on_calf);
		int palpitations = Integer.parseInt(request.getParameter("palpitations"));
		sdto.setPalpitations(palpitations);
		int painful_walking = Integer.parseInt(request.getParameter("painful_walking"));
		sdto.setPainful_walking(painful_walking);
		int pus_filled_pimples = Integer.parseInt(request.getParameter("pus_filled_pimples"));
		sdto.setPus_filled_pimples(pus_filled_pimples);
		int blackheads = Integer.parseInt(request.getParameter("blackheads"));
		sdto.setBlackheads(blackheads);
		int scurring = Integer.parseInt(request.getParameter("scurring"));
		sdto.setScurring(scurring);
		int skin_peeling = Integer.parseInt(request.getParameter("skin_peeling"));
		sdto.setSkin_peeling(skin_peeling);
		
		sdao.symptom_ok(sdto);
		// .exe 파일 실행
		Runtime rt = Runtime.getRuntime();
		String file = "D:\\study\\basic\\Prediction Diagnose\\dist\\disease_prediction_final.exe";
		Process pro;
		try
		{
			pro = rt.exec(file);
			pro.waitFor();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/self_diag_result";
	}
	
	@RequestMapping("/self_diag_result")
	public String self_diag_result(HttpServletRequest request, HttpSession session, Model model)
	{
		DiagonosisDao ddao = sqlSession6.getMapper(DiagonosisDao.class);
		String userid = (String) session.getAttribute("userid");
		DiagonosisDto list = ddao.list(userid);
		String nickname = ddao.nick(userid);
		model.addAttribute("list",list);
		model.addAttribute("nickname", nickname);
		if(list.getPredict().equals("2")||list.getPredict().equals("11")||list.getPredict().equals("12")||list.getPredict().equals("13")||list.getPredict().equals("14")||list.getPredict().equals("24")) {
			int rctgval = 1;
			int hctgval = 2;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("3")||list.getPredict().equals("4")||list.getPredict().equals("18")) {
			int rctgval = 6;
			int hctgval = 6;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("0")||list.getPredict().equals("17")||list.getPredict().equals("19")) {
			int rctgval = 20;
			int hctgval = 99;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("22")) {
			int rctgval = 8;
			int hctgval = 8;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("10")) {
			int rctgval = 3;
			int hctgval = 100;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("8")||list.getPredict().equals("20")) {
			int rctgval = 2;
			int hctgval = 3;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("9")) {
			int rctgval = 0;
			int hctgval = 1;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("1")||list.getPredict().equals("21")) {
			int rctgval = 7;
			int hctgval = 7;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("6")||list.getPredict().equals("16")) {
			int rctgval = 10;
			int hctgval = 9;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else if(list.getPredict().equals("15")) {
			int rctgval = 11;
			int hctgval = 10;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		} else {
			int rctgval = 99;
			int hctgval = 13;
			ArrayList<RecipeDto> reco_rlist = ddao.reco_rlist(rctgval);
			ArrayList<HfoodDto> reco_hlist = ddao.reco_hlist(hctgval);
			model.addAttribute("rctgval", rctgval);
			model.addAttribute("hctgval", hctgval);
			model.addAttribute("reco_rlist", reco_rlist);
			model.addAttribute("reco_hlist", reco_hlist);
		}
		return "/self_diagnose/self_diag_result";
	}
}
