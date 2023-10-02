package kream.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {

    @RequestMapping("/my")
    public String my() {
        return "/mypage/my";
    }

    @GetMapping("/defaultMain")
    public String defaultMain() {
        return "/mypage/defaultMain";
    }

    @GetMapping("/my/board")
    public String showBoard(Model model) {
        model.addAttribute("myContent", "This is the board page content.");
        return "/mypage/board";
    }

    @GetMapping("/my/comment")
    public String showComment(Model model) {
        model.addAttribute("myContent", "This is the comment page content.");
        return "/mypage/comment";
    }
}
