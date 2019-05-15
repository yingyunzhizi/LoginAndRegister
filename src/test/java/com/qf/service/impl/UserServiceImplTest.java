package com.qf.service.impl;


import com.qf.service.IUserService;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:applicationContext-dao.xml",
                         "classpath:applicationContext-dataSource.xml",
                            "classpath:applicationContext-service.xml"})
public class UserServiceImplTest {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private IUserService userService;

    @Test
    public void testDataSource(){
        System.out.println(dataSource);
    }

    @Test
    public void testSqlSessionFactory(){
        System.out.println(sqlSessionFactory);
    }
}