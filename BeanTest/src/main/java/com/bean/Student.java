package com.bean;

public class Student {
	private String name="abc";
	private int age=10;
	
	public String getName() {
		System.out.println("in side getter");
		return name;
	}
	public void setName(String name) {
		System.out.println("in side setter");
		this.name = name;
	}
	public int getAge() {
		System.out.println("in side getter");
		return age;
	}
	public void setAge(int age) {
		System.out.println("in side setter");
		this.age = age;
	}
	
	
}
