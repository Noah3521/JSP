package beans;

public class User {
	private String userid, userpw;
	private String nick, email;
	
	public User(String userid, String userpw, 
			String nick, String email) {
		
		this.userid = userid;
		this.userpw = userpw;
		this.nick = nick;
		this.email = email;
	}
	
	public User() {}
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userid == null) ? 0 : userid.hashCode());
		result = prime * result + ((userpw == null) ? 0 : userpw.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (userid == null) {
			if (other.userid != null)
				return false;
		} else if (!userid.equals(other.userid))
			return false;
		if (userpw == null) {
			if (other.userpw != null)
				return false;
		} else if (!userpw.equals(other.userpw))
			return false;
		return true;
	}
}
