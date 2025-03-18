package com.springmvc.controllers;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.beans.Dqd_giohang;

import com.springmvc.beans.Dqd_sanpham;
import com.springmvc.dao.Dqd_sanphamdao;
import javax.servlet.http.HttpSession;

@Controller  
public class HomeController {  
	
    @Autowired  
    Dqd_sanphamdao dao; // Inject UserDao for data operations

    @GetMapping({"", "/SpringMVCPagination"})
    public String redirectToHome(Model m) {
        List<Dqd_sanpham> list = dao.getEmployees();
        m.addAttribute("list", list);
        return "index";
    }
    
    @GetMapping("/home")
    public String getDataList(Model m) {
        List<Dqd_sanpham> list = dao.getEmployees();
        m.addAttribute("list", list);
        return "index";
    }
    @GetMapping("/giohang")
    public String showCart(HttpSession session, Model model) {
        List<Dqd_giohang> cartItems = (List<Dqd_giohang>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }

        for (Dqd_giohang item : cartItems) {
            System.out.println("Sản phẩm: " + item.getDqd_name() + " | Hình ảnh: " + item.getDqd_hinhanh());
        }

        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", calculateTotal(cartItems));
        return "giohang";
    }

    @GetMapping("/add-to-cart")
    public String addToCart(@RequestParam int id, 
                            @RequestParam String dqd_name, 
                            @RequestParam String dqd_hinhanh, 
                            @RequestParam int dqd_gia, 
                            HttpSession session) {
        
        System.out.println("Thêm sản phẩm vào giỏ: " + dqd_name + " | Ảnh: " + dqd_hinhanh);

        List<Dqd_giohang> cartItems = (List<Dqd_giohang>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }

        boolean exists = false;
        for (Dqd_giohang item : cartItems) {
            if (item.getId() == id) {
                item.setDqd_soluong(item.getDqd_soluong() + 1);
                exists = true;
                break;
            }
        }

        if (!exists) {
            cartItems.add(new Dqd_giohang(id, dqd_name, dqd_hinhanh, dqd_gia, 1));
        }

        session.setAttribute("cartItems", cartItems);
        return "redirect:/giohang";
    }

    @GetMapping("/xoagiohang/{id}")
    public String deletegiohang(@PathVariable int id, HttpSession session) {
        List<Dqd_giohang> cartItems = (List<Dqd_giohang>) session.getAttribute("cartItems");
        if (cartItems != null) {
            cartItems.removeIf(item -> item.getId() == id);
            session.setAttribute("cartItems", cartItems);
        }
        return "redirect:/giohang";
    }

    private int calculateTotal(List<Dqd_giohang> cartItems) {
        int total = 0;
        for (Dqd_giohang item : cartItems) {
            total += item.getDqd_gia() * item.getDqd_soluong();
        }
        return total;
    }

    @GetMapping("/saveform")
    public String showform(Model m) {
        m.addAttribute("command", new Dqd_sanpham());
        return "saveform";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("user") Dqd_sanpham dqd_sanpham) {
        dao.save(dqd_sanpham);
        return "redirect:/viewform";
    }

    @GetMapping("/viewform")
    public String viewemp(Model m) {
        List<Dqd_sanpham> list = dao.getEmployees();
        m.addAttribute("list", list);
        return "viewform";
    }

    @GetMapping("/sua/{id}")
    public String edit(@PathVariable int id, Model m) {
    	Dqd_sanpham dqd_sanpham = dao.getEmpById(id);
        m.addAttribute("command", dqd_sanpham);
        return "editform";
    }

    @PostMapping("/luu")
    public String luu(@ModelAttribute("user") Dqd_sanpham dqd_sanpham) {
        dao.update(dqd_sanpham);
        return "redirect:/viewform";
    }

    @GetMapping("/xoa/{id}")  
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/viewform";
    }
    @GetMapping("/thanhtoan")
    public String thanhToan(HttpSession session, Model model) {
        List<Dqd_giohang> cartItems = (List<Dqd_giohang>) session.getAttribute("cartItems");
        if (cartItems == null || cartItems.isEmpty()) {
            return "redirect:/giohang";
        }
        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", calculateTotal(cartItems));
        return "thanhtoan";
    }

    @PostMapping("/xulythanhtoan")
    public String xuLyThanhToan(@RequestParam String paymentMethod, HttpSession session, Model model) {
        List<Dqd_giohang> cartItems = (List<Dqd_giohang>) session.getAttribute("cartItems");
        if (cartItems == null || cartItems.isEmpty()) {
            return "redirect:/giohang";
        }

        int totalAmount = calculateTotal(cartItems);
        String paymentUrl = "";

        switch (paymentMethod) {
            case "VNPay":
                paymentUrl = "https://sandbox.vnpayment.vn/payment?amount=" + totalAmount + "&info=Thanh+toan+don+hang";
                break;
            case "NganHang":
                try {
                    String bankCode = "MB";
                    String accountNumber = "988888865";
                    String paymentInfo = URLEncoder.encode("quocdat", "UTF-8");

                    paymentUrl = "https://img.vietqr.io/image/" + bankCode + "-" + accountNumber + 
                                 "-compact.png?amount=" + totalAmount + "&addInfo=" + paymentInfo + "&currency=VND";
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
                
                
        }

        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", totalAmount);
        model.addAttribute("paymentMethod", paymentMethod);
        model.addAttribute("paymentUrl", paymentUrl);

        return "xulythanhtoan";
    }

    @PostMapping("/thanhtoan-thanhcong")
    public String thanhToanThanhCong(HttpSession session, Model model) {
        // Lấy giỏ hàng từ session
        List<Dqd_giohang> cartItems = (List<Dqd_giohang>) session.getAttribute("cartItems");

        if (cartItems == null || cartItems.isEmpty()) {
            return "redirect:/giohang"; // Nếu giỏ hàng trống, quay lại giỏ hàng
        }

        // Xóa giỏ hàng sau khi thanh toán thành công
        session.removeAttribute("cartItems");

        // Chuyển hướng đến trang xác nhận thanh toán
        model.addAttribute("message", "Thanh toán thành công!");
        return "xacnhanthanhtoan"; // Trả về trang xác nhận thanh toán
    }

}