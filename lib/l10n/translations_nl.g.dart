///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsNl = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final l10n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsAppNl app = TranslationsAppNl.internal(_root);
	late final TranslationsBoerenbridgeNl boerenbridge = TranslationsBoerenbridgeNl.internal(_root);
	late final TranslationsTripsNl trips = TranslationsTripsNl.internal(_root);
}

// Path: app
class TranslationsAppNl {
	TranslationsAppNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAppNavigationNl navigation = TranslationsAppNavigationNl.internal(_root);
}

// Path: boerenbridge
class TranslationsBoerenbridgeNl {
	TranslationsBoerenbridgeNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBoerenbridgePlayersSelectNl playersSelect = TranslationsBoerenbridgePlayersSelectNl.internal(_root);
	late final TranslationsBoerenbridgePlayingNl playing = TranslationsBoerenbridgePlayingNl.internal(_root);
}

// Path: trips
class TranslationsTripsNl {
	TranslationsTripsNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Kies je reis';
}

// Path: app.navigation
class TranslationsAppNavigationNl {
	TranslationsAppNavigationNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get trips => 'Reisjes';
	String get games => 'Spelletjes';
}

// Path: boerenbridge.playersSelect
class TranslationsBoerenbridgePlayersSelectNl {
	TranslationsBoerenbridgePlayersSelectNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Met wie goa je spiele?';
	String get empty => 'Gebt wat matties nodig voorda ge kunt spelen';
	late final TranslationsBoerenbridgePlayersSelectCtaNl cta = TranslationsBoerenbridgePlayersSelectCtaNl.internal(_root);
	late final TranslationsBoerenbridgePlayersSelectPopUpNl popUp = TranslationsBoerenbridgePlayersSelectPopUpNl.internal(_root);
}

// Path: boerenbridge.playing
class TranslationsBoerenbridgePlayingNl {
	TranslationsBoerenbridgePlayingNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String shuffleInformation({required String shufflerName, required int amount}) => '${shufflerName} deel keer ${amount} koarten uit';
	List<String> get scoreCard => [
		'Mattie',
		'Inschatting',
		'Gehaald',
		'Score',
	];
	String get next => 'Volgende ronde';
}

// Path: boerenbridge.playersSelect.cta
class TranslationsBoerenbridgePlayersSelectCtaNl {
	TranslationsBoerenbridgePlayersSelectCtaNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get start => 'Spele moar!';
	String get select => 'Matties toevoegen';
}

// Path: boerenbridge.playersSelect.popUp
class TranslationsBoerenbridgePlayersSelectPopUpNl {
	TranslationsBoerenbridgePlayersSelectPopUpNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get done => 'Geried';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.navigation.trips': return 'Reisjes';
			case 'app.navigation.games': return 'Spelletjes';
			case 'boerenbridge.playersSelect.title': return 'Met wie goa je spiele?';
			case 'boerenbridge.playersSelect.empty': return 'Gebt wat matties nodig voorda ge kunt spelen';
			case 'boerenbridge.playersSelect.cta.start': return 'Spele moar!';
			case 'boerenbridge.playersSelect.cta.select': return 'Matties toevoegen';
			case 'boerenbridge.playersSelect.popUp.done': return 'Geried';
			case 'boerenbridge.playing.shuffleInformation': return ({required String shufflerName, required int amount}) => '${shufflerName} deel keer ${amount} koarten uit';
			case 'boerenbridge.playing.scoreCard.0': return 'Mattie';
			case 'boerenbridge.playing.scoreCard.1': return 'Inschatting';
			case 'boerenbridge.playing.scoreCard.2': return 'Gehaald';
			case 'boerenbridge.playing.scoreCard.3': return 'Score';
			case 'boerenbridge.playing.next': return 'Volgende ronde';
			case 'trips.title': return 'Kies je reis';
			default: return null;
		}
	}
}

