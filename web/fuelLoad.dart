import 'package:polymer/polymer.dart';

class FuelLoad extends Observable {

	@observable String trip;
	@observable String distance;
	@observable String price;
	@observable String quantity;
	@observable String enteredOn = new DateTime.now().toString();
	@observable String paid;
	@observable String consumption;

	FuelLoad() {
		[#price, #quantity].forEach(
                (x) => onPropertyChange(this, x, () {
						String paidOld = paid;
						paid = calculatePaid();
						return notifyPropertyChange(#paid, paidOld, paid);
					}));
		[#price, #trip].forEach(
				(x) => onPropertyChange(this, x, () {
						String consumptionOld = consumption;
						consumption = calculateConsumption();
						return notifyPropertyChange(#consumption, consumptionOld, consumption);
					}));
	}

	String calculatePaid() {
		if (price == null || quantity == null || price.isEmpty || quantity.isEmpty) {
			return "0.00";
		}
		return (double.parse(price) * double.parse(quantity)).toStringAsFixed(2);
	}

	String calculateConsumption() {
		if (quantity == null || trip == null || quantity.isEmpty || trip.isEmpty) {
			return "0.00";
		}
		double tripAsNumber = double.parse(trip);
		if (tripAsNumber > 0) {
			return (double.parse(quantity) / tripAsNumber * 100).toStringAsFixed(2);
		}
		return "0.00";
	}

}
