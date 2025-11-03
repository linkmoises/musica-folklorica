#(define output-id "PUN07")
\version "2.23.2"
\header {
	title = "Punto Ocueño"
	subtitle = "Punto"
	composer = "Desconocido"
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

global= {
	\time 6/8
	\tempo "Ad libitum"
	\key a \minor
}

melodia = \new Voice \relative c' {
	e'4. \fermata f | g f | e d | c b |
	a gis | a c | e c | a' e |
	e \fermata e | a e | c b | a r8 e'8 f |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		g8 g fis g e4 | f8 f4 r8 d8 e | f8 a4 gis8 a4 | e4. r8 e,8 e |
		e a c f e4 | d8 c b ~ b e, e | e gis b e d4 |
	}
	\alternative {
		{ c8 b a r8 e'8 f | }
		{ e4 a8 ~ a b4 | }
	}
	a8-> g4 f8-> e4 | d b'8 ~ b a4 | g8-> f4 e8-> d4 | c8 a b c a b |
	c a b c d e | b'-> gis e gis e4 | b'8-> gis e gis e4 |
	c8-> a' e a e4 | c8-> a' e a e4 | b'8-> gis e gis-> e gis |
	b8-> gis e d b4 | c4. ~ c8 a c | f4. e4. | b8 c d ~ d e, b' |
	e8-> e4 d8-> d4 | c4. ~ c8 a c | f4. e4. | b8 c d ~ d e, b' |
	e8-> e4 d8-> d4 | c8-> a' a a a a | c,8-> a' a a a a |
	b,-> gis' gis gis gis gis | b-> gis gis gis gis gis |
	c,8-> a' a a a a | c,8-> a' a a a a | b,-> gis' gis gis e gis |
	b-> gis e d b4 | c4. ~ c8 a c | 
	\repeat volta 2 {
		f4. e4. | b8 c d ~ d e, b' | e8-> e4 d8-> d4 |
	}
	\alternative {
		{ c4. ~ c8 a c | }
		{ c4. ~ c8 e f | }
	}
	c4. ~ c8 a c | f4. e4. | b2. | e8 e4 f8 gis4 |
	a2. |
}

acordes = \chordmode {
%% acordes de guitarra / mejorana
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
	\override Lyrics.LyricText.font-size = #-0.5
>>
\layout {}
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4 = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}