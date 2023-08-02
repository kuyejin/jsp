package dao;

import dto.Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoTest1_print {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public static void main(String[] args) {
        DBC con = new MariaDBCon();
        conn = con.connect();
        if(conn != null){
            System.out.println("DB연결 성공");
        }

        //getMemberList()
        try{
            String sql = "select * from member";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            List<Member> memLIst = new ArrayList<>();
            while(rs.next()){
                Member mem = new Member();
                mem.setId(rs.getString("id"));
                mem.setPw(rs.getString("pw"));
                mem.setName(rs.getString("name"));
                mem.setEmail(rs.getString("email"));
                mem.setTel(rs.getString("tel"));
                mem.setRegdate(rs.getString("regdate"));
                mem.setPoint(rs.getInt("point"));
                memLIst.add(mem);


                System.out.println(mem.toString());

            }

        } catch (SQLException e) {
            System.out.println("SQL 구문이 처리되지 못했습니다");
        }finally {
            con.close(rs,pstmt,conn);
        }


    }




}
