package com.nangui.service;

import com.nangui.model.Users;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * @author Adonai Nangui
 */
@Stateless
public class UsersFacade extends AbstractFacade<Users> implements UsersFacadeLocal {
    
    @PersistenceContext(unitName = "IntroJeePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(Users.class);
    }

    @Override
    public Users findUserByLoginAndPassword(String login, String password) {
        try {
            return em.createQuery("SELECT u FROM Users u WHERE u.login = :login AND u.passwd = :pwd", Users.class)
                        .setParameter("login", login)
                        .setParameter("pwd", password)
                     .getSingleResult();
        } catch(Exception ex) {
            return null;
        }
    }    
}
