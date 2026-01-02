///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsNl = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final l10n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

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

	/// nl: 'Kies je reis'
	String get title => 'Kies je reis';
}

// Path: app.navigation
class TranslationsAppNavigationNl {
	TranslationsAppNavigationNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// nl: 'Reisjes'
	String get trips => 'Reisjes';

	/// nl: 'Spelletjes'
	String get games => 'Spelletjes';
}

// Path: boerenbridge.playersSelect
class TranslationsBoerenbridgePlayersSelectNl {
	TranslationsBoerenbridgePlayersSelectNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// nl: 'Met wie goa je spiele?'
	String get title => 'Met wie goa je spiele?';

	/// nl: 'Gebt wat matties nodig voorda ge kunt spelen'
	String get empty => 'Gebt wat matties nodig voorda ge kunt spelen';

	late final TranslationsBoerenbridgePlayersSelectCtaNl cta = TranslationsBoerenbridgePlayersSelectCtaNl.internal(_root);
	late final TranslationsBoerenbridgePlayersSelectPopUpNl popUp = TranslationsBoerenbridgePlayersSelectPopUpNl.internal(_root);
}

// Path: boerenbridge.playing
class TranslationsBoerenbridgePlayingNl {
	TranslationsBoerenbridgePlayingNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// nl: '${shuffler_name: String} deel keer ${amount: int} koarten uit'
	String shuffleInformation({required String shufflerName, required int amount}) => '${shufflerName} deel keer ${amount} koarten uit';

	List<String> get scoreCard => [
		'Mattie',
		'Inschatting',
		'Gehaald',
		'Score',
	];

	/// nl: 'Volgende ronde'
	String get next => 'Volgende ronde';
}

// Path: boerenbridge.playersSelect.cta
class TranslationsBoerenbridgePlayersSelectCtaNl {
	TranslationsBoerenbridgePlayersSelectCtaNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// nl: 'Spele moar!'
	String get start => 'Spele moar!';

	/// nl: 'Matties toevoegen'
	String get select => 'Matties toevoegen';
}

// Path: boerenbridge.playersSelect.popUp
class TranslationsBoerenbridgePlayersSelectPopUpNl {
	TranslationsBoerenbridgePlayersSelectPopUpNl.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// nl: 'Geried'
	String get done => 'Geried';
}

/// The flat map containing all translations for locale <nl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.navigation.trips' => 'Reisjes',
			'app.navigation.games' => 'Spelletjes',
			'boerenbridge.playersSelect.title' => 'Met wie goa je spiele?',
			'boerenbridge.playersSelect.empty' => 'Gebt wat matties nodig voorda ge kunt spelen',
			'boerenbridge.playersSelect.cta.start' => 'Spele moar!',
			'boerenbridge.playersSelect.cta.select' => 'Matties toevoegen',
			'boerenbridge.playersSelect.popUp.done' => 'Geried',
			'boerenbridge.playing.shuffleInformation' => ({required String shufflerName, required int amount}) => '${shufflerName} deel keer ${amount} koarten uit',
			'boerenbridge.playing.scoreCard.0' => 'Mattie',
			'boerenbridge.playing.scoreCard.1' => 'Inschatting',
			'boerenbridge.playing.scoreCard.2' => 'Gehaald',
			'boerenbridge.playing.scoreCard.3' => 'Score',
			'boerenbridge.playing.next' => 'Volgende ronde',
			'trips.title' => 'Kies je reis',
			_ => null,
		};
	}
}
