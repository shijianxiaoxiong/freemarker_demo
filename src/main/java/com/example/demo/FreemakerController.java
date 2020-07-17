package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class FreemakerController {

    @GetMapping("/test")
    public ModelAndView test(Map<String ,Object> map){
        map.put("ran","hello kity");
        return new ModelAndView("test",map);
    }

    @GetMapping("/if")
    public ModelAndView iftest(Map<String ,Object> map){
        map.put("ran","hello kity");
        return new ModelAndView("if",map);
    }

    //如果ModelAndView没有指明要返回的页面,就会使用@GetMapping也就是访问映射地址作为默认返回的页面
    @GetMapping("/list")
    public ModelAndView list(Map<String ,Object> map){
        List<String> stringList = new ArrayList<String>();
        boolean bool = true;
        String test1 = "hello kity 1";
        String test2 = "hello kity 2";
        String test3 = "hello kity 3";
        String test4 = "hello kity 4";
        String test5 = "hello kity 5";

        Map<String, Object> stringObjectMap = new HashMap<String, Object>();
        stringObjectMap.put("test1",test1);
        stringObjectMap.put("test2",test2);
        stringObjectMap.put("test3",test3);
        stringObjectMap.put("test4",test4);
        stringObjectMap.put("test5",test5);


        stringList.add("123");
        stringList.add("12345");
        stringList.add("123456");
        stringList.add("1234567");
        stringList.add("12345678");

        map.put("bool",bool);
        map.put("list",stringList);
        map.put("stringObjectMap",stringObjectMap);

         return new ModelAndView("list",map);
    }

    @GetMapping("/macro")
    public ModelAndView macro(Map<String ,Object> map){
        map.put("ran","hello kity");
        return new ModelAndView("macro",map);
    }



}
