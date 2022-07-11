package com.generation.citymanager.model.database;

import java.util.List;

import com.generation.citymanager.model.entities.Citizen;
import com.generation.citymanager.model.entities.City;

public interface Database
{
	List<City> getCities();

	City getCity(String ID);

	List<Citizen> getCitizen(String key);
}
