package com.generation.citymanager.model.database;

import java.util.List;

import com.generation.citymanager.model.entities.City;

public interface Database
{
	List<City> getCities();
}
