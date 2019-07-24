package com.home.care.dao.db;

import java.util.List;

import com.home.care.bo.FacilityBO;

public interface HomeCareDbDao {
	public List<FacilityBO>	 getFacilities(String facilityType, String state, String zip);
}
