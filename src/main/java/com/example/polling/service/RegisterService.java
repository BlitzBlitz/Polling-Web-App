package com.example.polling.service;

import com.example.polling.data.Admin;
import com.example.polling.data.AdminRepository;
import com.example.polling.data.User;
import com.example.polling.data.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

    @Autowired
    AdminRepository adminRepository;
    @Autowired
    UserRepository userRepository;

    public boolean registerAdmin(Admin admin){
        return adminRepository.addAdmin(admin);
    }
    public boolean registerUser(User user){
        if(user.getIsAdmin() == null){
            return userRepository.addUser(user);
        }
        return adminRepository.addAdmin(new Admin(user.getIdNumber(), user.getPassword()));
    }
}
