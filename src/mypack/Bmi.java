package mypack;

public class Bmi {
	private double height1;
	private double height2;
	private double weight;
	private String choice;
	private double bmi;

	public Bmi(double height1, double height2, double weight, String choice) {
		super();
		this.height1 = height1;
		this.height2 = height2;
		this.weight = weight;
		this.choice = choice;
	}
	public Bmi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public double getHeight1() {
		return height1;
	}
	public void setHeight1(double height1) {
		this.height1 = height1;
	}
	public double getHeight2() {
		return height2;
	}
	public void setHeight2(double height2) {
		this.height2 = height2;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public String getChoice() {
		return choice;
	}
	public void setChoice(String choice) {
		this.choice = choice;
	}
	
	public double getBmi() {
		switch (choice) {
		case "imperial":
			bmi = (weight)/((height1*height2)*703);
			break;
		
		case "metric":
			bmi = (weight)/(height1*height2);
			break;
		}
		return bmi;
	}
}
