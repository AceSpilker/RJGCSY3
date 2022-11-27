package com.rjgc.model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

public class A1DB {


//    public static void main(String[] args) {
//        A1DB db = new A1DB();
//        db.getAllEmps();
//    }

    //用户登录
    public String userlogin(String user, String pass) {
        String tt = null;
        Connection conn = CreateConnection.getconnection();
        System.out.println(conn);
        PreparedStatement psmt = null;
        ResultSet rs = null;
        try {
            psmt = conn.prepareStatement("select utype from scuser where uname=? and upassword=?");
            psmt.setString(1, user);
            psmt.setString(2, pass);
            rs = psmt.executeQuery();
            if (rs.next()) {
                tt = rs.getString(1);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            CreateConnection.close(conn, psmt, rs);
        }

        return tt;
    }

    //注册用户
    public boolean userregiste(String uname,String upass,String utele,String utype){
        boolean f = false;
        Connection conn = CreateConnection.getconnection();
        PreparedStatement psmt = null;
        int re = 0;
        try {
            psmt = conn.prepareStatement("insert into scuser(uname, upassword, utele, utype) value(?,?,?,?)");
            psmt.setString(1, uname);
            psmt.setString(2, upass);
            psmt.setString(3, utele);
            psmt.setString(4, utype);
            re = psmt.executeUpdate();
            if (re > 0) {
                f = true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            CreateConnection.close(conn, psmt);
        }
        return f;
    }

    //添加新题
    public boolean addQuestion(String qno,String qneirong,String qlx){
        boolean f = false;
        Connection conn = CreateConnection.getconnection();
        PreparedStatement psmt = null;
        int re = 0;
        try {
            psmt = conn.prepareStatement("insert into question(tihao, tineirong, titype) value(?,?,?)");
            psmt.setString(1, qno);
            psmt.setString(2, qneirong);
            psmt.setString(3, qlx);
            re = psmt.executeUpdate();
            System.out.println("tianjia"+qno+qneirong+qlx);
            if (re > 0) {
                f = true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            CreateConnection.close(conn, psmt);
        }
        return f;
    }

    //查询问题
    public List GetQuestion() {
        List list = new ArrayList();
        Connection conn = CreateConnection.getconnection();
        PreparedStatement psmt = null;
        ResultSet rs = null;
        try {
            psmt = conn.prepareStatement("select * from question");
            rs = psmt.executeQuery();
            while (rs.next()) {
                Map map = new HashMap();
                map.put("tihao", rs.getString("tihao"));
                map.put("tineirong", rs.getString("tineirong"));
                map.put("titype", rs.getString("titype"));
                list.add(map);
                /*System.out.println(map);*/
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            CreateConnection.close(conn, psmt, rs);
        }
        return list;
    }

    //查询用户
    public List GetUser() {
        List list = new ArrayList();
        Connection conn = CreateConnection.getconnection();
        PreparedStatement psmt = null;
        ResultSet rs = null;
        try {
            psmt = conn.prepareStatement("select * from scuser");
            rs = psmt.executeQuery();
            while (rs.next()) {
                Map map = new HashMap();
                map.put("uname", rs.getString("uname"));
                map.put("upassword", rs.getString("upassword"));
                map.put("utele", rs.getString("utele"));
                if(rs.getString("utype").equals("0")){
                    map.put("utype", "管理员");
                }else if(rs.getString("utype").equals("2")){
                    map.put("utype", "工作人员");
                }else if(rs.getString("utype").equals("3")){
                    map.put("utype", "领导");
                }else if(rs.getString("utype").equals("4")){
                    map.put("utype", "顾客");
                }
                list.add(map);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            CreateConnection.close(conn, psmt, rs);
        }
        return list;
    }

    //删除用户
    public Boolean DeleteUser(String name) {
        boolean f = false;
        Connection conn = CreateConnection.getconnection();
        PreparedStatement psmt = null;
        int re = 0;
        try {
            psmt = conn.prepareStatement("delete from scuser where uname=?");
            psmt.setString(1, name);
            re = psmt.executeUpdate();
            if (re > 0) {
                f = true;
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            CreateConnection.close(conn, psmt);
        }
        return f;
    }

    //删除问题
    public Boolean DeleteQuestion(String tihao) {
        boolean f = false;
        Connection conn = CreateConnection.getconnection();
        PreparedStatement psmt = null;
        int re = 0;
        try {
            psmt = conn.prepareStatement("delete from question where tihao=?");
            psmt.setString(1, tihao);
            System.out.println(tihao);
            re = psmt.executeUpdate();
            if (re > 0) {
                f = true;
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            CreateConnection.close(conn, psmt);
        }
        return f;
    }
}
