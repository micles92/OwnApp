package com.micles92.dao;


import com.micles92.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by lesiulol on 25.01.16.
 */

public interface UserDao extends JpaRepository<User,Long> {

    User findByLogin(String login);
}
