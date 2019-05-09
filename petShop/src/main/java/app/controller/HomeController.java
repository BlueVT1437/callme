package app.controller;

import app.entity.Customers;
import app.entity.Home;

import app.repository.HomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import app.repository.CustomersRepository;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller

public class HomeController {
    @Autowired
    private CustomersRepository customersRepository;

    @RequestMapping(value = "/")
    public String demo() {
        return "home";
    }

    @RequestMapping(value = "/huongdan")
    public String huongdanView() {
        return "huongdan";
    }

    @RequestMapping(value = "/register2")
    public String chargeSuccessView() {

        return "register2";
    }

    @RequestMapping(value = "/chargeSuccess")
    public String register2View(
            @RequestParam(value = "customername", defaultValue = "-1") String customername,
            @RequestParam(value = "customerphone", defaultValue = "-1") String customerphone,
            @RequestParam(value = "customeraddress", defaultValue = "-1") String customeraddress,
            HttpServletResponse response, Model model) {
        String canhbao = "";
        Cookie cookie = new Cookie("id", "0"); //
        response.addCookie(cookie);

                Customers lg = new Customers(customername,customeraddress,customerphone);
                customersRepository.save(lg);
                model.addAttribute("valueCookie", cookie.getValue());
                return "chargeSuccess";



    }

}

