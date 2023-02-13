/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Admin
 */
public class CustomerMasterDAO extends BaseDAO{
    
    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
   
    
    public int createAccount(Customer c) 
    {
        int count=0;  
            try {
                connection = getConnection(); //establishing connection
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            String sql = "insert into CAFE.REGISTRATIONDETAILS values(?,?,?,?,?,?)";
          try{  //step 2 
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,c.getUname());
            preparedStatement.setString(2,c.getEmail());
            preparedStatement.setString(3,c.getAddress());
            preparedStatement.setInt(4,Integer.parseInt(c.getPincode()));
            preparedStatement.setInt(5,Integer.parseInt(c.getMobile()));
            preparedStatement.setString(6,c.getPsw());
            
           
            count = preparedStatement.executeUpdate(); // step 3 firing query
                
                if(count>0) // step 4 processing result
                {
                    System.out.println("Successfully Inserted");
                
                }else{
                    System.out.println("insertion failed");
                }

            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
          
          finally{
                try {
                    connection.close();
                    preparedStatement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
          }
           return count; 
    }
    
    
    
      public  boolean checkLogin(Customer c)
    {
       
            try {
                connection=getConnection();//step 1
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            String sql = "select * from CAFE.REGISTRATIONDETAILS where NAME=? AND PASSWORD= ?";
            
            try { //step 2
            preparedStatement = connection.prepareStatement(sql);
            
            preparedStatement.setString(1,c.getUname());
            preparedStatement.setString(2,c.getPsw());
            rs=preparedStatement.executeQuery();//step 3
            
            while( rs.next())
              {
              return true;
              }
        
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            
                return false;
    }
      public int changePassword(Customer c, String newpassword) {
        int count=0;
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "SELECT * from CAFE.REGISTRATIONDETAILS where EMAIL=? ";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,c.getEmail());
           
            rs = preparedStatement.executeQuery();
            while(rs.next()){
                String yo = "UPDATE CAFE.REGISTRATIONDETAILS SET PASSWORD = '"+newpassword+"'WHERE EMAIL = '"+c.getEmail()+"'";
                preparedStatement = connection.prepareStatement(yo);
                count = preparedStatement.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
    return count;
    }
     /* public int removeCustomerById(String email)
    {int count = 0;
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) 
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sql="delete from HR.CUSTOMERS where EMAIL_ID = ?";
        try {
            preparedStatement= connection.prepareStatement(sql);
          
             preparedStatement.setString(1,email);
                count = preparedStatement.executeUpdate();
                 if(count>0)
                {
                    System.out.println("Successfully Deleted");
                }else{
                    System.out.println("Deletion failed");
                }
                
             
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
              return count;
    }
      public List findCustomerByName(String name)
    {    List<Customer> addlist=new ArrayList<Customer>();
        
        String sql="select * from HR.CUSTOMERS where FIRST_NAME like '%"+name+"%'";
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement=connection.prepareStatement(sql);
          
            rs=preparedStatement.executeQuery();
            while(rs.next())
            {   Customer c  = new Customer();
                System.out.println("test");
               
                c.setFirstName(rs.getString(3));
                c.setLastName(rs.getString(4));
                c.setEmail(rs.getString(2));
                addlist.add(c);
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return addlist;
    }

    public int changePassword(Customer c, String newpassword) {
        int count=0;
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "select * from HR.CUSTOMERS where EMAIL_ID=? AND PASSWORD=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,c.getEmail());
            preparedStatement.setString(2,c.getPassword());
            rs = preparedStatement.executeQuery();
            while(rs.next()){
                String yo = "UPDATE HR.CUSTOMERS SET PASSWORD = '"+newpassword+"'WHERE EMAIL_ID = '"+c.getEmail()+"'";
                preparedStatement = connection.prepareStatement(yo);
                count = preparedStatement.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        */
       
    //return count;
    //}
}


