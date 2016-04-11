package com.micles92.service;

import com.micles92.model.User;

import javax.jws.soap.SOAPBinding;
import java.util.List;

/**
 * Created by lesiulol on 11.04.16.
 */
public interface UserService {
    List<User> findAll();

    void save(User user);

    User findOne(Long id);

    void delete(Long id);

    User findByLogin(String login);
}
