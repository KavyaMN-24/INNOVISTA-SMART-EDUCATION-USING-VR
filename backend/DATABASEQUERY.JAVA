/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;


import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.swing.JOptionPane;

/**
 *
 * @author AnsproTech
 */
public class DBQuery {
    
    public Connection con=null;
    public Statement stmt=null;
    public ResultSet rs=null;
    public int login_check(String u,String p) throws ClassNotFoundException, SQLException{
    int i=0;
      con = DBConnection.getConnection();
    stmt=con.createStatement();
    String q="select * from register where username='"+u+"' and password='"+p+"' ";// or select * from user_info where email='"+u+"' and pass='"+p+"'";
       System.out.println(""+q);
    rs=stmt.executeQuery(q);
    if(rs.next())
    {
    i=1;
    }
    return i;
    
    }
    public ResultSet get_questions(String qno,String catg) throws ClassNotFoundException, SQLException{
    int i=0;
      con = DBConnection.getConnection();
    stmt=con.createStatement();
    String q="select * from questions where course_name='"+catg+"' and question_id='"+qno+"' ";
       System.out.println(""+q);
    rs=stmt.executeQuery(q);
    
    return rs;
    
    }
   public String plogin_check(String u,String p) throws ClassNotFoundException, SQLException{
    String username="";
      con = DBConnection.getConnection();
    stmt=con.createStatement();
    String q="select * from register where pemail='"+u+"' and ppass='"+p+"' ";// or select * from user_info where email='"+u+"' and pass='"+p+"'";
       System.out.println(""+q);
    rs=stmt.executeQuery(q);
    if(rs.next())
    {
    username=rs.getString("username");
    }
    return username;
    
    }
   public String get_answer(String course_name,int question_id) throws ClassNotFoundException, SQLException{
    String answer="";
      con = DBConnection.getConnection();
        stmt=con.createStatement();
    String q="select * from questions where question_id='"+question_id+"' and course_name='"+course_name+"'";
       System.out.println(""+q);
    rs=stmt.executeQuery(q);
    if(rs.next())
    {
    answer=rs.getString("correct");
    }
    return answer;
    
    }
    public ResultSet get_answers(String semail) throws ClassNotFoundException, SQLException{
    
      con = DBConnection.getConnection();
        stmt=con.createStatement();
    String q="select * from answer_details where user='"+semail+"' ";
       System.out.println(""+q);
    rs=stmt.executeQuery(q);
    
    return rs;
    
    }
   public ResultSet get_all_answers() throws ClassNotFoundException, SQLException{
    
      con = DBConnection.getConnection();
        stmt=con.createStatement();
    String q="select * from answer_details ";
       System.out.println(""+q);
    rs=stmt.executeQuery(q);
    
    return rs;
    
    }
       public int add_answer(String course,String score,String date,String time)throws ClassNotFoundException,SQLException
    {
        String qry="insert into answer_details values('"+course+"','"+score+"','"+date+"','"+time+"')";
         con=DBConnection.getConnection();
         stmt=con.createStatement();
        int val=stmt.executeUpdate(qry);
        return val;
    }
    
    public int submit_answer(String qno,String catg,String cans,String sans,int score,String date,String time)throws ClassNotFoundException,SQLException
    {
        String qry="insert into student_anaswer values('"+qno+"','"+catg+"','"+cans+"','"+sans+"','"+score+"','"+date+"','"+time+"')";
         con=DBConnection.getConnection();
         stmt=con.createStatement();
        int val=stmt.executeUpdate(qry);
        return val;
    }
    
     public ResultSet get_answers1(String catg) throws ClassNotFoundException, SQLException{
    int i=0;
      con = DBConnection.getConnection();
    stmt=con.createStatement();
    String q="select * from student_anaswer where catg='"+catg+"'  ";
       System.out.println(""+q);
    rs=stmt.executeQuery(q);
    
    return rs;
    
    }
   
}
