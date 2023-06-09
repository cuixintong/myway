package com.myway.controller;

import com.myway.entity.Scenic;
import com.myway.entity.TastyFood;
import com.myway.service.FoodService;
import com.myway.service.ScenicService;
import com.myway.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    ScenicService scenicService;
    @Autowired
    FoodService foodService;
    @Autowired
    TicketService ticketService;

    /**
     * 管理员登陆界面
     * @return
     */
    @RequestMapping(value = "/managerLoginPage")
    public String toManagerLoginPage(){
        return "manager/login";
    }

    /**
     * 加载管理员首页
     * @return
     */
    @RequestMapping(value = "/manager")
    public String testManagerIndex(){
        return "manager/index";
    }

    /**
     * 用户登录界面
     * @return
     */
    @RequestMapping(value = "/loginPage")
    public String toLoginPage(){
        return "user/login";
    }

    /**
     * 用户注册界面
     * @return
     */
    @RequestMapping(value = "/registerPage")
    public String toRegisterPage(){
        return "user/register";
    }

    @RequestMapping(value = "/userInfoPage")
    public String toInformationPage(){
        return "user/userInfo";
    }

    /**
     * 加载用户主界面
     * @param model
     * @return
     */
    @RequestMapping(value = "/user")
    public String testUserIndex(Model model){
        List<Scenic> list =  scenicService.selectScenicList();
        System.out.println(list);
        List<TastyFood> listFood =  foodService.selectFoodList();
        System.out.println(listFood);
        list = list.subList(0, 3);
        listFood = listFood.subList(0, 3);
        model.addAttribute("list",list);
        model.addAttribute("listFood",listFood);

        return "user/index";
    }
}