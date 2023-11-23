package day1123.method;

public class Calc {
	public int sumcalc(int i, int j) {
		int sum = 0;
		for (; i <= j; i++) {
			sum += i;
		}
		return sum;
	}
}
