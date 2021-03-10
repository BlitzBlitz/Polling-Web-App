package com.example.polling.service;

import com.example.polling.data.Admin;
import com.example.polling.data.AdminRepository;
import com.example.polling.data.User;
import com.example.polling.data.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    AdminRepository adminRepository;
    @Autowired
    UserRepository userRepository;


    public int validateAdmin(Admin admin){
        if(adminRepository.getAdmin(admin.getIdNumber()) == null){
            return 0;       //not registered
        }
        if(!adminRepository.getAdmin(admin.getIdNumber()).getPassword().equals(admin.getPassword())){
            return 1;               //wrong pass
        }
        return 2;               //success
    }
    public int validateUser(User user){
        if(userRepository.getUser(user.getIdNumber()) == null){
            return 0;       //not registered
        }
        if(!userRepository.getUser(user.getIdNumber()).getPassword().equals(user.getPassword())){
            return 1;               //wrong pass
        }
        return 2;               //success
    }

}
