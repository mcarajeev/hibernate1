package com.beans;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Test {
	public static void main(String[] args) {
		Configuration configuration=new Configuration();
		configuration.configure();
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();

		Employee employee=new Employee();
		Dept dept=new Dept();
		Set<Employee> set=new HashSet<Employee>();
	
		employee.setEmpno(1);
		employee.setUserName("rajeev");
		
		set.add(employee);
		dept.setDeptno(1);
		dept.setDname("mca");
		dept.setLoc("bang");
		dept.setEmployees(set);
		
		session.save(dept);
		transaction.commit();
		
	}
}
