\version "2.23.2"
\header {
	title = "Soledad"
	subtitle = "Danzón Cumbia"
	composer = "José De La Rosa Cedeño (1907 - 1990)"
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 20
	left-margin = 20
	right-margin = 20
	bottom-margin = 25
	print-page-number = false
	indent = 0
}

\markup \vspace #2

global = {
	\time 2/4
	\tempo 4 = 90
	\key d \minor
}

melodia = \new Voice \relative c' {
	\partial 4 f'8. e16 |
	\repeat volta 2 {
		f d a f a d cis a | g8 bes bes'8. a16 | bes16 g e cis a g f e | d8 f d''8. cis16 |
		d16 a f d a f g a | c8 bes ~ bes g | d'16 g bes d cis bes a g | f d a d f a g bes |
		e, g cis, e a, a' e f |
	}
	\alternative {
		{ d4 f8. e16 | }
		{ d4 r4 | }
	}
	\repeat volta 2 {
		c8 d16 c8 b16 c8 | bes'8 g e c | bes8 c16 d8 e16 g8 | f16 a8 c,16 ~ c4 |
		a8 bes16 a8 gis16 a8 | e'8 cis a g | a8 cis16 e8 g16 e8 | f4 d |
		d,8 e f g | bes8. g8. d'8 | cis4 e8 f | 
	}
	\alternative {
		{ d4 r4 | }
		{ d4 r8 a8 | } 
	}
	\mark \markup { \small \musicglyph #"scripts.coda" }
	\repeat volta 2 {
		d8 f16 a8 d16 a8 | c8. g16 bes8 f | a8. cis,16 e8 g |
	}
	\alternative {
		{ bes8. d,8. a8 | }
		{ bes'8. d,8. d16 d | }
	}
	\repeat volta 2 {
		bes'8 g d' cis | a4 f8 d | e cis e a |
	}
	\alternative {
		{ d,4 r8 d16 d | }
		{ d4 r8 f16 a | }
	}
	\repeat volta 2 {
		cis8 e, g bes | cis a r4 | c8 f, g e |
	}
	\alternative {
		{ f8. d8. f16 a | }
		{ d,4 r8 f16 a | }
	}
	\repeat volta 2 { 
		d8. g,16 g8 e' | f8. cis16 a8 bes | f8 cis e a |
	}
	\alternative {
		{ f16 d f a | }
		{ d,8 a16 d f a g e | }
	}
	\repeat volta 2 { 
		c8 a' ~ a16 g e c | d8 a16 d f a g e | cis8 a' ~ a16 g e cis | d8 d,16 f a g bes d |
		cis4 a16 a' g e | d8 d,16 f a g bes d | cis4 a16 a' g e |
	}
	\alternative { 
		{ d8 a16 d f a g e | }
		{ d4 r8 a8 | \bar "||" }
	}
	\mark \markup { \small \musicglyph #"scripts.coda" }
	d16 a d f a gis a bes | a g e cis a' g e cis | a' f d e f g a bes |
	a4 r8 d,16 d | d4 r4 |
	\bar "|."
}

acordes = \chordmode {
%% acordes de guitarra / mejorana
}

lirica = \lyricmode {
%% letra
}

\score { %% genera el PDF
<<
	\language "espanol"
	\new ChordNames {
		\set chordChanges = ##t
		\set noChordSymbol = ##f
		\override ChordName.font-size = #-0.9
		\override ChordName.direction = #UP
		\acordes
	}
	\new Staff
		<< \global \melodia >>
	\addlyrics \lirica
	\override Lyrics.LyricText.font-size = #-0.5
>>
\layout {}
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4 = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}