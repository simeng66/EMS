package entity;
/**
 * Tsushe generated by hbm2java
 */
public class Tsushe implements java.io.Serializable {

	private int fangjianhao;
	private Integer yongdian;
	private Integer dmoney;
	private Integer lishiyongdian;

	public Tsushe() {
	}

	public Tsushe(int fangjianhao) {
		this.fangjianhao = fangjianhao;
	}

	public Tsushe(int fangjianhao, Integer yongdian, Integer dmoney, Integer lishiyongdian) {
		this.fangjianhao = fangjianhao;
		this.yongdian = yongdian;
		this.dmoney = dmoney;
		this.lishiyongdian = lishiyongdian;
	}

	public int getFangjianhao() {
		return this.fangjianhao;
	}

	public void setFangjianhao(int fangjianhao) {
		this.fangjianhao = fangjianhao;
	}

	public Integer getYongdian() {
		return this.yongdian;
	}

	public void setYongdian(Integer yongdian) {
		this.yongdian = yongdian;
	}

	public Integer getDmoney() {
		return this.dmoney;
	}

	public void setDmoney(Integer dmoney) {
		this.dmoney = dmoney;
	}

	public Integer getLishiyongdian() {
		return this.lishiyongdian;
	}

	public void setLishiyongdian(Integer lishiyongdian) {
		this.lishiyongdian = lishiyongdian;
	}

}
