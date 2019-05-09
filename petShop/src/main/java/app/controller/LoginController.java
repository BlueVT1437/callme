package app.controller;

import app.entity.Boss;
import app.entity.Login;

import app.entity.Providers;
import app.repository.BossRepository;
import app.repository.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import app.repository.LoginRepository;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller
@SuppressWarnings("Duplicates")

public class LoginController {

    @Autowired
    private LoginRepository loginRepository;
    private BossRepository bossRepository;
    private ProviderRepository providerRepository;


    @RequestMapping(value = "/login")
    public String loginView(
            @RequestParam(value = "uName", defaultValue = "-1") String uName,
            @RequestParam(value = "pass", defaultValue = "-1") String pass,
            @RequestParam(value = "repass", defaultValue = "-1") String repass,
            @RequestParam(value = "idnew", defaultValue = "-1") String idnew,
            @RequestParam(value = "id",defaultValue = "-1") String id, HttpServletResponse response,Model model)
    {
        String canhbao = "";
        Cookie cookie = new Cookie("id", "0"); //
        response.addCookie(cookie);
        if(!(uName.equals("-1") && pass.equals("-1") && repass.equals("-1") ))
        {
            if(pass.equals(repass))
            {

                Login lg = new Login(idnew,pass,uName);
                loginRepository.save(lg);

                canhbao = "Dang ky thanh cong!!!";
            }
            else
                canhbao = "Repass Sai !";
        }
        model.addAttribute("canhbao",canhbao);
        model.addAttribute("valueCookie",cookie.getValue());
        return "login";

    }

    @RequestMapping(value="/register")
    public String registerView()
    {
        return "register";
    }

    @RequestMapping(value = "/test")
    public String test()
    {
        return "test";
    }

    @RequestMapping("/admin")

    public String dasboardView(@CookieValue(value = "id", defaultValue = "0") String idCookie,
                               @RequestParam(value = "id",defaultValue = "-1") String id,
                               @RequestParam(value = "pass",defaultValue = "-1") String pass,

                               Model model, HttpServletResponse response) {

        Login index = loginRepository.findById(id).orElse(loginRepository.findById(idCookie).orElse(new Login("notfound","notfound","notfound")));

        String loginStatus = "Correct !";

            if ((index.getId() != "notfound!" && index.getPassword().equals(pass))) {

                Cookie cookie = new Cookie("id", index.getId());
                response.addCookie(cookie);

                model.addAttribute("index", id);

                model.addAttribute("nameLogin", index.getName());


                return "admin";

            }
            else {
                if (idCookie.equals("0")) {
                    Cookie cookie = new Cookie("id", "0");
                    response.addCookie(cookie);
                    loginStatus = "Error password or ID !";
                    model.addAttribute("loginStatus", loginStatus);
                    return "login";
                }//Sai tai khoan va mat khau that
                else {


                    model.addAttribute("index", idCookie);
                    index = loginRepository.findById(idCookie).orElse(new Login());
                    model.addAttribute("nameLogin", index.getName());

                    return "admin";
                }//Lenh refresh trang admin
            }



    }



}
