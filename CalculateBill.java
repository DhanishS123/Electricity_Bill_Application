package logicClasses;

public class CalculateBill {
	String consumerName;
	int consumerNo;
	double currentMonthReading;
	double previousMonthReading;
	String consumerType;

	public double calculateBill(int consumerNo, String consumerName, double previousMonthReading,
			double currentMonthReading, String consumerType) {
		this.consumerName = consumerName.toUpperCase();
		this.consumerNo = consumerNo;
		this.currentMonthReading = currentMonthReading;
		this.previousMonthReading = previousMonthReading;
		this.consumerType = consumerType;

		double unitConsumed = currentMonthReading - previousMonthReading;
		double billAmount = 0;

		while (true) {

			if ("Domestic".equalsIgnoreCase(consumerType)) {

				if (unitConsumed <= 100) {
					billAmount = 1 * unitConsumed;
				} else if (unitConsumed <= 200) {
					billAmount = 100 * 1 + (unitConsumed - 100) * 2.5;
				} else if (unitConsumed <= 500) {
					billAmount = 100 * 1 + 100 * 2.5 + (unitConsumed - 200) * 4;
				} else {
					billAmount = 100 * 1 + 100 * 2.5 + 300 * 4 + (unitConsumed - 500) * 6;
				}
				return billAmount;

			} else if ("Commercial".equalsIgnoreCase(consumerType)) {

				if (unitConsumed <= 100) {
					billAmount = 2 * unitConsumed;
				} else if (unitConsumed <= 200) {
					billAmount = 100 * 2 + (unitConsumed - 100) * 3.5;
				} else if (unitConsumed <= 500) {
					billAmount = 100 * 3 + 100 * 3.5 + (unitConsumed - 200) * 5;
				} else {
					billAmount = 100 * 2 + 100 * 3.5 + 300 * 5 + (unitConsumed - 500) * 7;
				}
				return billAmount;

			}else {
				System.out.println("Inavlid Input");
			}
		}
	}
}
