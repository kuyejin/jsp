package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;


//updateMember()
// 정보수정
public class DaoTest4_update {
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
        System.out.println("변경할 포인트 입력 >>");
        int point = sc.nextInt();

        int cnt = 0;

        try {
            String sql = "update member set point=point+? where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, point);
            pstmt.setString(2, id);
            cnt = pstmt.executeUpdate();


            if (cnt > 0) {
                System.out.println("포인트 변경 완료!");
            } else {
                System.out.println("실패");
            }
            con.close(pstmt, conn);
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }


    }


}
