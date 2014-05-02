import 'package:polymer/polymer.dart';
import 'fuelLoad.dart';

/**
 * A Polymer fuel load form element.
 */
@CustomTag('fuel-load-form')
class FuelLoadForm extends PolymerElement {

	@observable FuelLoad fuelLoad = new FuelLoad();

	FuelLoadForm.created(): super.created();

	void save() {
	}

	void cancel() {
		fuelLoad = new FuelLoad();
	}
}
