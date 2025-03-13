package com.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.beans.Dqd_khachhang;
import com.springmvc.dao.Dqd_KhachHangDao;

@Controller
@RequestMapping("/khachhang")
public class Dqd_KhachHangController {

    @Autowired
    private Dqd_KhachHangDao khachhangdao;

    @GetMapping("/list")
    public String viewKhachHang(Model model) {
        List<Dqd_khachhang> list = khachhangdao.getAllKhachhang();
        model.addAttribute("list", list);
        return "khachhang/list"; // Trả về tên file JSP
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("command", new Dqd_khachhang());
        return "khachhang/add";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("thietbi") Dqd_khachhang khachhang) {
        khachhangdao.save(khachhang);
        return "redirect:/khachhang/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        Dqd_khachhang thietbi = khachhangdao.getKhachHangById(id);
        model.addAttribute("command", thietbi);
        return "khachhang/edit";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("thietbi") Dqd_khachhang khachhang) {
        khachhangdao.update(khachhang);
        return "redirect:/khachhang/list";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        khachhangdao.delete(id);
        return "redirect:/khachhang/list";
    }
   
}
