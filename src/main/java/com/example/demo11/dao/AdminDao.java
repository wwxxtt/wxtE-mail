package com.example.demo11.dao;

import com.example.demo11.beans.enity.AdminDO;

public interface AdminDao {
    AdminDO validateLogin(String userName);
}
