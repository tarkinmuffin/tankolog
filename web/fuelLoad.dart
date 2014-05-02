import 'package:polymer/polymer.dart';

class FuelLoad extends Observable {

	@observable String trip;
	@observable String distance;
	@observable String price;
	@observable String quantity;
	@observable String entryDate = new DateTime.now().toString();

	String get paid => calculatePaid();
	String get consumption => calculateConsumption();

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
