package com.home.care.dao.service;

import java.util.List;

import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.home.care.bo.FacilityBO;
import com.home.care.dao.db.HomeCareDbImpl;

public class HomeCareServiceImpl implements HomeCareService{
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired HomeCareDbImpl	homeCareDbDao;
	
	public List<FacilityBO>	 getFacilities(String facilityType, String state, String zip)
	{
		List<FacilityBO> facilityBOs	=	null;
		try
		{
			facilityBOs	=	homeCareDbDao.getFacilities(facilityType, state, zip);
		}
		catch (Exception ex) {
			logger.error("Error in fatching facility:  details : "+ex.getMessage());
			ex.printStackTrace();
		}
		return facilityBOs;
	}

	public  boolean isNumeric(final String str) {

        return NumberUtils.isDigits(str);

    }	
	
}
