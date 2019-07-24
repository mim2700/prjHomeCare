package com.home.care.dao.service;

import java.util.List;

import com.home.care.bo.FacilityBO;

public interface HomeCareService {
	public List<FacilityBO>	 getFacilities(String facilityType, String state, String zip);
	public  boolean isNumeric(final String str);
}
