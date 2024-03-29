import 'package:polymer/polymer.dart';
import 'fuelLoad.dart';

/**
 * A Polymer fuel load entry element.
 */
@CustomTag('fuel-load-entry')
class FuelLoadEntry extends PolymerElement {

	@published
	@observable
	FuelLoad fuelLoad;

	FuelLoadEntry.created(): super.created();

	bool get applyAuthorStyles => true;
}
