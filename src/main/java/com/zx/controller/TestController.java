package com.zx.controller;

import com.zx.domain.TestA;
import com.zx.service.TestAService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by 97038 on 2017-05-27.
 */
@Controller
@RequestMapping("/")
public class TestController {
    @Autowired
    private TestAService testAService;
    @GetMapping("test1")
    public List<TestA> test1(){
        return testAService.queryAll();
    }

    @GetMapping("/")
    public String test2(){
        return "index";
    }


}
