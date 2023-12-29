package human.dto;

//DTO(Data Transfer Object): 데이터를 저장하고 전달하는 역할을 하는 자바클래스
//회원DTO는 tb_member테이블의 컬럼명 개수와 같이 필드 선언
public class dto2 {
	private int m_idx;
	private String id;
	private String pw;
	private String name1;
	private String phone;
	private String email;
	private int cancel_or_not;

	public int getCancel_or_not() {
		return cancel_or_not;
	}

	public void setCancel_or_not(int cancel_or_not) {
		this.cancel_or_not = cancel_or_not;
	}

	public int getM_idx() {
		return m_idx;
	}

	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "아이디:" + id + ", 비밀번호:" + pw + ", 이름:" + name1 + ", 핸드폰:" + phone + ", 이메일:" + email;
	}

	// HashSet에서 동일한 값의 필드가 입력되어 있으면 동일한 데이터로 인식하도록
	// hashCode(), equals() 메소드를 재정의함
	@Override
	public int hashCode() {
		// String클래스는 주소값이 아니라 내용에 대한 해시코드값을 반환하도록 재정의되어 있음
		return id.hashCode() + pw.hashCode() + name1.hashCode() + phone.hashCode() + email.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if (obj instanceof dto2) {
			dto2 m = (dto2) obj;
			if (id.equals(m.getId()) && pw.equals(m.getPw()) && name1.equals(m.getName1()) && phone.equals(m.getPhone())
					&& email.equals(m.getEmail())) {

				result = true;
			}
		}

		return result;
	}

}
