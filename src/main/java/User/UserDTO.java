package User;

public class UserDTO {

	private int index;
	private String user_id;
	private String user_pw;
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	
	public UserDTO(int index, String user_id, String user_pw) {
		super();
		this.index = index;
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	
}
