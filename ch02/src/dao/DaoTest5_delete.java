package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;


//deleteMember()
// 정보삭제
public class DaoTest5_delete {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public static void main(String[] args) {
        DBC con = new MariaDBCon();
        conn = con.connect();
        if (conn != null) {
            System.out.println("DB연결 성공");
        }

        Scanner sc = new Scanner(System.in);
        System.out.println("회원 아이디 입력 >>");
        String id = sc.nextLine();

        int cnt = 0;

        try {
            String sql = "delete from member where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            cnt = pstmt.executeUpdate();


            if (cnt > 0) {
                System.out.println("삭제 완료!");
            } else {
                System.out.println("삭제 실패");
            }
            con.close(pstmt, conn);
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }


    }


}
