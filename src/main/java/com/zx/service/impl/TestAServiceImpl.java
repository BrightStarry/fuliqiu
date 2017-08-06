package com.zx.service.impl;

import com.zx.dao.TestADao;
import com.zx.domain.TestA;
import com.zx.service.TestAService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 97038 on 2017-05-27.
 */
@Service
public class TestAServiceImpl implements TestAService {
    @Autowired
    private TestADao testADao;
    @Override
    public List<TestA> queryAll() {
        return testADao.findAll();
    }
}
