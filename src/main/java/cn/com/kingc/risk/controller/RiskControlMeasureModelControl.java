package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Riskcontrolmeasure;
import cn.com.kingc.risk.model.Riskhazard;
import cn.com.kingc.risk.model.Risksite;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:36
 */
public class RiskControlMeasureModelControl {

	public Riskcontrolmeasure addMeasureByAttch(){
		return null;
	}

	/**
	 * 
	 * @param mDescription
	 */
	public Riskcontrolmeasure addMeasureByDecs(String mDescription){
		return null;
	}

	public Riskcontrolmeasure addMeasureByLocalFile(){
		return null;
	}

	/**
	 * 
	 * @param mRiskSite
	 */
	public void initializationView(Risksite mRiskSite){

	}

	/**
	 * 
	 * @param mHazard
	 */
	public void initializationViewByHazard(Riskhazard mHazard){

	}

	/**
	 * 
	 * @param mMeasure
	 */
	public int removeMeasrue(Riskcontrolmeasure mMeasure){
		return 0;
	}

	public void showMeasures(){

	}

	public boolean showQueryConditionForm(){
		return false;
	}

}