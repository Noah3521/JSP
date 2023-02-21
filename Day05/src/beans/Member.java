package beans;

/*
	Java Beans
	- Java Application에서 데이터를 주고 받기 위한 객체
	
	작성 규칙)
	1. 기본 생성자가 필수
	2. 필드는 private, 메서드는 public 
	
	※ 파라미터 이름과 필드 이름이 같게 맞춰주면 편하다
*/

public class Member {
	private String userid, userpw;
	private String nick, name, phone;
	private int age;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
