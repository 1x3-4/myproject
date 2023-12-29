package human.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import human.dto.dto2;
import human.util.DBConnection;

//DAO(Data Access Object): 데이터베이스와 연결해서 SQL작업을 하는 자바클래스
public class dao2 extends DBConnection {

	// 회원정보 입력하기: join(MemberDTO dto): int
	public int join(dto2 dto) throws SQLException {
		int result = 0;

		// MemberDTO에 아이디,비밀번호,이름,핸드폰,이메일이 저장된 것으로 가정하고
		// tb_member테이블에 데이터를 추가하는 구문 작성하기
		String sql = "insert into tb_member (m_idx, id, pw, name1, phone, email) "
				+ " values(member_seq.nextval, ?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getId());
		pstmt.setString(2, dto.getPw());
		pstmt.setString(3, dto.getName1());
		pstmt.setString(4, dto.getPhone());
		pstmt.setString(5, dto.getEmail());
		result = pstmt.executeUpdate();

		return result;
	}

	// 모든 회원정보 가져오기:getMembers():ArrayList<MemberDTO>
	public ArrayList<dto2> getMembers() throws SQLException {
		ArrayList<dto2> members = new ArrayList<>();

		String sql = "select * from tb_member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			dto2 dto = new dto2();
			dto.setM_idx(rs.getInt("m_idx"));
			dto.setId(rs.getString("id"));
			dto.setPw(rs.getString("pw"));
			dto.setName1(rs.getString("name"));
			dto.setPhone(rs.getString("handphone"));
			dto.setEmail(rs.getString("email"));

			members.add(dto);
		}

		return members;
	}

	public int updateMember2(dto2 dto) throws SQLException {
		int result = 0;

		String sql = "update tb_member  set pw=?, name1=?, phone=?, email=? " + " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getPw());
		pstmt.setString(2, dto.getName1());
		pstmt.setString(3, dto.getPhone());
		pstmt.setString(4, dto.getEmail());
		pstmt.setInt(5, dto.getM_idx());
		result = pstmt.executeUpdate();

		return result;
	}

	public int checkId(String id) throws SQLException {
		int result = 0;

		String sql = "select count(*) from tb_member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			result = rs.getInt(1);
		}

		return result;
	}

//	public int login2(String id, String pw) throws SQLException {
////		System.out.println("로그인 탔다");
//		int result = 0;
//
//		String sql = "select count(*) from tb_member where id=? and pw=?";
//		pstmt = conn.prepareStatement(sql);
//		pstmt.setString(1, id);
//		pstmt.setString(2, pw);
//		rs = pstmt.executeQuery();
//
//		if (rs.next()) {
//			result = rs.getInt(1);
//		}
//
//		return result;
//	}

	public dto2 login(String id, String pw) throws SQLException {
		dto2 dto = null;

		String sql = "select m_idx from tb_member where id=? and pw=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			int m_idx = rs.getInt(1);
			dto = getMember(m_idx);
			if (dto.getCancel_or_not() == 1) {
				dto = null;
			}

		}

		return dto;
	}

	public dto2 getMember(int m_idx) throws SQLException {
		String sql = "select * from tb_member where m_idx = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, m_idx);
		rs = pstmt.executeQuery();

		dto2 dto = null;
		if (rs.next()) {
			dto = new dto2();
			dto.setM_idx(rs.getInt("m_idx"));
			dto.setId(rs.getString("id"));
			dto.setPw(rs.getString("pw"));
			dto.setName1(rs.getString("name1"));
			dto.setPhone(rs.getString("phone"));
			dto.setEmail(rs.getString("email"));
			dto.setCancel_or_not(rs.getInt("cancel_or_not"));

		}
		return dto;
	}

	public dto2 updateMember(dto2 dto) throws SQLException {
		dto2 newDto = null;

		String sql = "update tb_member  set pw=?, name1=?, phone=?, email=? " + " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getPw());
		pstmt.setString(2, dto.getName1());
		pstmt.setString(3, dto.getPhone());
		pstmt.setString(4, dto.getEmail());
		pstmt.setInt(5, dto.getM_idx());

		if (pstmt.executeUpdate() == 1) { // 회원정보 업데이트 성공
			newDto = getMember(dto.getM_idx());
		}

		return newDto;
	}

	public dto2 deleteMember(dto2 dto) throws SQLException {
		dto2 newDto = null;

		String sql = "update tb_member set cancel_or_not = 1" + " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, dto.getM_idx());

		if (pstmt.executeUpdate() == 1) {
			newDto = getMember(dto.getM_idx());
		}

		return newDto;
	}

}
