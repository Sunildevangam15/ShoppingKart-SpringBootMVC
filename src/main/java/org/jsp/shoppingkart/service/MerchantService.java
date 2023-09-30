package org.jsp.shoppingkart.service;

import java.util.Random;

import org.jsp.shoppingkart.dao.MerchantDao;
import org.jsp.shoppingkart.dto.Merchant;
import org.jsp.shoppingkart.helper.AES;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

@Service
public class MerchantService {

    @Autowired
    MerchantDao merchantDao;

    public String signup(Merchant merchant, ModelMap map) {
        Merchant merchant1=merchantDao.fetchByEmail(merchant.getEmail());
        Merchant merchant2=merchantDao.fetchByMobile(merchant.getMobile());
        if(merchant1!=null)
        {
            map.put("fail", "Email Already Exists");
            return "MerchantSignup";
        }
        if(merchant2!=null)
        {
            map.put("fail", "Mobile Number Already Exists");
            return "MerchantSignup";
        }
        merchant.setPassword(AES.encrypt(merchant.getPassword(), "123"));
        int otp=new Random().nextInt(100000,9999999);
        merchant.setOtp(otp);
        //Logic for Sending Email
        
        merchantDao.save(merchant);
        map.put("pass", "OTP Sent Successfully");
        return "MerchantVerifyOtp";
    }

}