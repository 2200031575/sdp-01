package com.klu.example.dao;

import com.klu.example.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import com.klu.example.util.HibernateUtil;

public class UserDAO {

    // Register a new user
    public void registerUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    // Check if a user with the given username already exists
    public User getUserByUsername(String username) {
        User user = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Query<User> query = session.createQuery("FROM User WHERE username = :username", User.class);
            query.setParameter("username", username);
            user = query.uniqueResult();  // Get the single result
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
