package bai1;

public class QualificationAtr {
	private String Board;
	private float Percentage;
	private int PassingYear;
	public QualificationAtr(String board, float percentage, int passingYear) {
		super();
		Board = board;
		Percentage = percentage;
		PassingYear = passingYear;
	}
	public QualificationAtr() {
		super();
	}
	public String getBoard() {
		return Board;
	}
	public void setBoard(String board) {
		Board = board;
	}
	public float getPercentage() {
		return Percentage;
	}
	public void setPercentage(float percentage) {
		Percentage = percentage;
	}
	public int getPassingYear() {
		return PassingYear;
	}
	public void setPassingYear(int passingYear) {
		PassingYear = passingYear;
	}
	@Override
	public String toString() {
		return "QualificationAtr [Board=" + Board + ", Percentage=" + Percentage + ", PassingYear=" + PassingYear + "]";
	}
	

}
