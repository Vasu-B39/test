package com.xworkz.mock.app;

public class Collection {
	
	private int id;
	private String name;
	private double age;
	
	public Collection(int id, String name, double age) {
		this.id = id;
		this.age = age;
		this.name = name;

	}

	@Override
	public String toString() {
		return "Collection [id=" + id + ", name=" + name + ", age=" + age + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getAge() {
		return age;
	}

	public void setAge(double age) {
		this.age = age;
	}
	
	

}
