package com.user.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.jfree.util.Log;

import com.user.hibernate.UserAttendence;
import com.user.hibernate.UserHibernate;
import com.user.utility.HibernateUtility;

public class UserDao {

	public void saveUser(UserHibernate dhh) {

		System.out.println("In Dao");
		System.out.println(dhh);
		HibernateUtility hbu = null;
		Session session = null;
		Transaction transaction = null;
		try {
			hbu = HibernateUtility.getInstance();
			session = hbu.getHibernateSession();
			System.out.println("got session ");
			transaction = session.beginTransaction();

			System.out.println("Tx started");
			session.save(dhh);
			transaction.commit();
		} catch (RuntimeException e) {
			try {
				transaction.rollback();
				e.printStackTrace();
			} catch (RuntimeException rbe) {
				rbe.printStackTrace();
			}
		} finally {

			if (session != null) {

				hbu.closeSession(session);

			}
		}
	}
	
	public List getUserList()
	{
		HibernateUtility hbu = null;
		Session session = null;
		List<UserHibernate> userList = null;
		try {

			hbu = HibernateUtility.getInstance();
			session = hbu.getHibernateSession();

			Query query = session.createSQLQuery("SELECT firstname, lastname, contact_no, address, username, password, re_password, city, pan_no, email FROM user;");
			List<Object[]> list = query.list();

			userList = new ArrayList<UserHibernate>(0);

			for (Object[] object : list) {
				UserHibernate reports = new UserHibernate();
                
				reports.setFirstname(object[0].toString());
				reports.setLastname(object[1].toString());
				reports.setContact_no(object[2].toString());
				reports.setAddress(object[3].toString());
				reports.setUsername(object[4].toString());
				reports.setPassword(object[5].toString());
				reports.setRe_password(object[6].toString());
				reports.setCity(object[7].toString());
				reports.setPan_no(object[8].toString());
				reports.setEmail(object[9].toString());
	
				userList.add(reports);

			}
		} catch (RuntimeException e) {

		} finally {

			hbu.closeSession(session);
		}
		return userList;
	}

	public List getByUserName(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("In Dao");
		HibernateUtility hbu = null;
		Session session = null;
		List list = null;
		Transaction transaction = null;
		try {
			hbu = HibernateUtility.getInstance();
			session = hbu.getHibernateSession();
			Query query = session.createSQLQuery("select username from user");
			list = query.list();
			System.out.println(list);
			transaction.commit();
		}catch(RuntimeException e) {
			Log.error("Error in UserHibernate()", e);
		}finally {
			if(session != null) {
				hbu.closeSession(session);
			}
		}
		return list;
	}
	public UserHibernate getUserListByName(String userName) {

		HibernateUtility hbu = null;
		Session session = null;
		Transaction transaction = null;
		UserHibernate user = null;

		try {
			hbu = HibernateUtility.getInstance();
			session = hbu.getHibernateSession();
			transaction = session.beginTransaction();
			
			String hql = "FROM UserHibernate U WHERE U.username = :username";
			Query query = session.createQuery(hql);
			query.setParameter("username", userName);
			 user = (UserHibernate) query.uniqueResult();


			System.out.println(user);

			transaction.commit();
		}catch(RuntimeException e) {
			Log.error("Error in UserDao", e);
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				hbu.closeSession(session);
			}
		}
		return user;
	}
	public void updateUserDetails(UserHibernate updatedUser) {
		HibernateUtility hbu = null;
		Session session = null;
		Transaction transaction = null;

		try {
			hbu = HibernateUtility.getInstance();
			session = hbu.getHibernateSession();
			transaction = session.beginTransaction();

			// Fetch the existing employee by ID
			UserHibernate existingUser = (UserHibernate) session.get(UserHibernate.class, updatedUser.getId());

			// Update the fields with new values
			existingUser.setFirstname(updatedUser.getFirstname());
			existingUser.setLastname(updatedUser.getLastname());
			existingUser.setAddress(updatedUser.getAddress());
			existingUser.setContact_no(updatedUser.getContact_no());
			existingUser.setUsername(updatedUser.getUsername());
			existingUser.setPassword(updatedUser.getPassword());
			existingUser.setRe_password(updatedUser.getRe_password());
			existingUser.setCity(updatedUser.getCity());
			existingUser.setPan_no(updatedUser.getPan_no());
			existingUser.setEmail(updatedUser.getEmail());
			// Save the updated employee
			session.saveOrUpdate(existingUser);

			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			if (session != null) {
				hbu.closeSession(session);
			}
		}
	}

	public void saveData(UserAttendence dhh) {
		// TODO Auto-generated method stub
		System.out.println("In Dao");
		System.out.println(dhh);
		HibernateUtility hbu = null;
		Session session = null;
		Transaction transaction = null;
		try {
			hbu = HibernateUtility.getInstance();
			session = hbu.getHibernateSession();
			System.out.println("got session ");
			transaction = session.beginTransaction();

			System.out.println("Tx started");
			session.save(dhh);
			transaction.commit();
		} catch (RuntimeException e) {
			try {
				transaction.rollback();
				e.printStackTrace();
			} catch (RuntimeException rbe) {
				rbe.printStackTrace();
			}
		} finally {

			if (session != null) {

				hbu.closeSession(session);

			}
		}
	}
	
	public List getUserList2()
	{
		HibernateUtility hbu = null;
		Session session = null;
		List<UserAttendence> userList = null;
		try {

			hbu = HibernateUtility.getInstance();
			session = hbu.getHibernateSession();

			Query query = session.createSQLQuery("SELECT firstname, lastname, date, present, absent, halfday, holiday, paidleave FROM userattendence;");
			List<Object[]> list = query.list();

			userList = new ArrayList<UserAttendence>(0);

			for (Object[] object : list) {
				
				UserAttendence reports = new UserAttendence();
                
				
				reports.setFirstname(object[0].toString());
				reports.setLastname(object[1].toString());
			//	Date date = null;
				reports.setDate((Date) object[2]);
				reports.setPresent(object[3].toString());
				reports.setAbsent(object[4].toString());
				reports.setHalfday(object[5].toString());
				reports.setHoliday(object[6].toString());
				reports.setPaidleave(object[7].toString());
				
				userList.add(reports);

				System.out.println(userList);
			}
		} catch (RuntimeException e) {

		} finally {

			hbu.closeSession(session);
		}
		return userList;
	}
	}





