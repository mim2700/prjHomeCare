package com.home.care.dao.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.home.care.bo.FacilityBO;
import com.home.care.utility.Constants;



public class HomeCareDbImpl implements HomeCareDbDao{

	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	private	NamedParameterJdbcTemplate	nPJdbcTemplDps;
	private	Properties					queryProps;
	
	public void setnPJdbcTemplDps(NamedParameterJdbcTemplate nPJdbcTemplDps)
	{
		this.nPJdbcTemplDps = nPJdbcTemplDps;
	}
	
	public void setQueryProps(Properties queryProps)
	{
		this.queryProps = queryProps;
	}
	
	public List<FacilityBO>	 getFacilities(String facilityType, String state, String zip)
	{
		String		SQL_SELECT_FACILITIES	=	queryProps.getProperty(Constants.SQL_SELECT_FACILITIES_RCFE);
		
		logger.info("SQL : "+SQL_SELECT_FACILITIES);
		
		RowMapper<FacilityBO> mapper	= new RowMapper<FacilityBO>() {
			
			public FacilityBO mapRow(ResultSet rs, int rowNum) throws SQLException {
				FacilityBO	facilityBO	=	new FacilityBO();
				  facilityBO.setId(rs.getString("id"));
				  facilityBO.setFacilityType(rs.getString("facility_type"));
				  facilityBO.setCity(rs.getString("city"));
				  facilityBO.setState(rs.getString("state"));  
				  facilityBO.setZip(rs.getString("zip"));  
				  facilityBO.setBed(rs.getString("beds"));  
				  facilityBO.setPrice(rs.getString("price"));  
				  facilityBO.setFacilityStatus(rs.getString("facility_status"));
				  facilityBO.setFacilityCapacity(rs.getString("facility_capacity"));  
				  facilityBO.setInspectionVisit(rs.getString("inspection_visit"));  
				  facilityBO.setLicenseFirstDate(rs.getString("licensed_first_date"));  
				  facilityBO.setCitationNumber(rs.getString("citation_number"));  
				  facilityBO.setServicesOffered(rs.getString("services_offered"));  
				  facilityBO.setAffilations(rs.getString("affilations"));  
				  facilityBO.setFeatures(rs.getString("features"));  
				  facilityBO.setLocationMap(rs.getString("map"));  
				  facilityBO.setTelephone(rs.getString("telephone"));  
				  facilityBO.setEmail(rs.getString("email"));  
				  facilityBO.setDescription(rs.getString("description"));  
				  facilityBO.setImage(rs.getString("image"));  
				  facilityBO.setTitle(rs.getString("title"));  
				  facilityBO.setServiceDescription(rs.getString("service_description"));  
				  facilityBO.setSemiPrivate(rs.getString("semi_private"));  
				  facilityBO.setPrivatePrice(rs.getString("private_price"));  
				  facilityBO.setClientId(rs.getString("client_id"));  
				return facilityBO;
			}
		};
		
		Map<String, String> mapParams		=	new HashMap<String, String>();
		mapParams.put("paramZip", zip);
		mapParams.put("paramLocation", state);
		mapParams.put("paramFacilityType", facilityType);
		
		logger.info("mapParams : "+mapParams);
		
		return nPJdbcTemplDps.query(SQL_SELECT_FACILITIES, mapParams, mapper);

	}
}
