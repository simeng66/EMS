package entity;
// Generated 2016-6-25 13:32:00 by Hibernate Tools 3.4.0.CR1

/**
 * Tadmin generated by hbm2java
 */
public class Tadmin implements java.io.Serializable {

	private int userId;
	private String userName;
	private String userPw;

	public Tadmin() {
	}

	public Tadmin(int userId) {
		this.userId = userId;
	}

	public Tadmin(int userId, String userName, String userPw) {
		this.userId = userId;
		this.userName = userName;
		this.userPw = userPw;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPw() {
		return this.userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

}