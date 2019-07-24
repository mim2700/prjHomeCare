package com.home.care.dao.service;

import java.util.List;

import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.home.care.bo.FacilityBO;
import com.home.care.dao.db.HomeCareDbImpl;

public class HomeCareServiceImpl implements HomeCareService{

	@Autowired HomeCareDbImpl	homeCareDbDao;
	
	public List<FacilityBO>	 getFacilities(String facilityType, String state, String zip)
	{
		return homeCareDbDao.getFacilities(facilityType, state, zip);
	}

	public  boolean isNumeric(final String str) {

        return NumberUtils.isDigits(str);

    }	
	
}
