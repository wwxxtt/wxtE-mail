package com.example.demo11.impl;

import com.example.demo11.beans.enity.AdminDO;
import com.example.demo11.dao.AdminDao;
import com.example.demo11.service.AdminService;

public class AdminSeviceimpl implements AdminService {
    private AdminDao adminDao = new AdminDaoimpl();
    @Override
    public AdminDO validateLogin(String userName) {
        return adminDao.validateLogin(userName);
    }
}

