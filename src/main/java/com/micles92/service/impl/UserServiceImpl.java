package com.micles92.service.impl;

import com.micles92.dao.UserDao;
import com.micles92.model.User;
import com.micles92.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by lesiulol on 11.04.16.

 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    public List<User> findAll() {
        return userDao.findAll();
    }


    public void save(User user) {
        userDao.save(user);
    }

    public User findOne(Long id) {
        return userDao.findOne(id);
    }

    public void delete(Long id) {
        userDao.delete(id);
    }

    public User findByLogin(String login) {
        return userDao.findByLogin(login);
    }
}
