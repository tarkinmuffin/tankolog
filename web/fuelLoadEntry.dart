import 'package:polymer/polymer.dart';
import 'fuelLoad.dart';

/**
 * A Polymer fuel load entry element.
 */
@CustomTag('fuel-load-entry')
class FuelLoadEntry extends PolymerElement {

	@published
	FuelLoad fuelLoad;

	FuelLoadEntry.created(): super.created();

}
