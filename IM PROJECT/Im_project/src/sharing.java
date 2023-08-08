/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Katherine
 */
public class sharing {
    public  static String LoginName;
    public  static String pass;
    public  static String cname;
    public  static String currName;
    public  static String username;
    
    public static void setloginname(String LoginName){
        sharing.LoginName = LoginName;
           
    }
    
    public static  String getLoginname(){
        return LoginName;
        
    }
     public static void setpass(String pass){
        sharing.pass = pass;
        
        
    }
    
    public static  String getpass(){
        return pass;
        
    }
    public static void setUser(String username){
        sharing.username = username;
        
        
    }
    
    public static  String getUser(){
        return username;}
}
