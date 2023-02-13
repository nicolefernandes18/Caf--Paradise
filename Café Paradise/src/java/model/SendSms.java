/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ANIKET
 */
   import com.way2sms.SMS;
import com.way2sms.Contact;

class TestSMS {

public static void main(String[] args) {

SMS smsClient=new SMS();
smsClient.send("fascel","dragonfly","9833290924","hi welcome to the cafe delivery","");
}
}