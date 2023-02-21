package beans;

public class Account {
	private String userid, userpw, nick;
	
	public Account(String userid, String userpw, String nick) {
		this.userid = userid;
		this.userpw = userpw;
		this.nick = nick;
	}

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
}
