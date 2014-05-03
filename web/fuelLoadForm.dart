import 'package:polymer/polymer.dart';
import 'fuelLoad.dart';

/**
 * A Polymer fuel load form element.
 */
@CustomTag('fuel-load-form')
class FuelLoadForm extends PolymerElement with Observable {

	@observable
	FuelLoad fuelLoad = new FuelLoad();

	List<FuelLoad> entries = toObservable([]);

	FuelLoadForm.created(): super.created();

	void save() {
		fuelLoad.calculateConsumption();
		fuelLoad.calculatePaid();
		entries.add(fuelLoad);
		reset();
	}

	void reset() {
		fuelLoad = new FuelLoad();
	}

}
