package com.simplilearn.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.simplilearn.entity.Employee;
import com.simplilearn.util.HibernateUtil;

public class EmployeeDAO {

	public static void addEmployee(Employee e) {
		// STEP 1: Build Sessgion Factory object
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// STEP 2: Open Session
		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		
		session.close();
	}

	public static List<Employee> listEmployees() {
		// STEP 1: Build Sessgion Factory object
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// STEP 2: Open Session
		Session session = sf.openSession();

		// STEP 3: Query DB
		List<Employee> employees = session.createQuery(" from Employee ").list();

		session.close();
		return employees;
	}
}
