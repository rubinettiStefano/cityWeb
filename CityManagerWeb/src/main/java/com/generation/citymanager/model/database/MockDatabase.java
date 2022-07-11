package com.generation.citymanager.model.database;

import java.util.ArrayList;
import java.util.List;

import com.generation.citymanager.model.entities.City;

public class MockDatabase implements Database
{

	List<City> cities = new ArrayList<City>();
	
	public MockDatabase()
	{
		cities.add(new City("CITY01","Monza",100,100));
		cities.add(new City("CITY02","Vicenza",200,100));
		cities.add(new City("CITY03","Roma",1000,1000));
		cities.add(new City("CITY04","Budapest",500,500));
		cities.add(new City("CITY05","Lisbona",300,300));
	}
	
	@Override
	public List<City> getCities()
	{
		return cities;
	}
	
	@Override
	public City getCity(String ID)
	{
		for(City c : cities)
			if(c.ID.equals(ID))
				return c;
		return null;
	}

}
