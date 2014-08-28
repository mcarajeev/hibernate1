package com.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.hb.beans.Employee;
import com.hb.beans.PersonalDetails;

public class Test {
	public static void main(String[] args) {
		Configuration configuration=new Configuration();
		configuration.configure();
		configuration.addResource("Employee.hbm.xml");
		configuration.addResource("PersonalDetails.hbm.xml");
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Employee employee=new Employee();
		PersonalDetails personalDetails=new PersonalDetails();
		
		employee.setDeptNo(10);
		personalDetails.setFirstName("rajeev");
		personalDetails.setLastName("kumar");

		employee.setPersonalDetails(personalDetails);
		
		session.save(employee);
		transaction.commit();
		session.close();
	}
}
