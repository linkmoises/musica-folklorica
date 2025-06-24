#(define output-id "CMB14")
\version "2.24.0"
\header {
	title = "Edicta no me quiere"
	subtitle = "Danzón Cumbia"
	composer = "Francisco 'Chico Purio' Ramírez (1903 - 1987)"
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
	\key a \minor
}

melodia = \new Voice \relative c' {
	\partial 4 r16 e'16 a gis |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		a16 e c b c a b c | d8 c16 b8 e16 b' a | c a e d b c d e |
		c8 a r16 e'16 c' b | c a e a e cis d e | f8 d r16 b16 c d |
		b g b e gis b a e |
	}
	\alternative {
		{ a4 r16 e16 a gis | }
		{ a4 r16 e,16 a c | }
	}
	\repeat volta 2 {
		a8. a16 gis16 a c e | a4 a16 b c b | a4 r16 e,16 a c |
		a8. a16 g16 a c e | a4 gis16 a b a | g2 |
		d8 d16 c d e gis b | b8. e,16 e'16 c a e | d8 b e'16 d a e | %% compases varios no legibles
		c8 a r16 e16 a c | a8. a16 g a c e | a4 c8 b |
		a4 r16 e,16 a c | a8. a16 g a c e | a4 gis16 a b a | 
		g2 | d8. c16 d e g b | d8. e,16 e'16 c a e |
		d8 b16 f'8 e16 c8 |
	}
	\alternative {
		{ \mark \markup { \small \musicglyph #"scripts.coda" } a4 r16 e16 a c | }
		{ a8. a16 a8. a16 | a4 r16 e'16 a gis | \bar "||" }
	}
	\mark \markup { \small \italic "D.S. 2 veces y luego a coda" }
	\cadenzaOn
		\stopStaff
			\repeat unfold 1 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	a4 r8 a16 a | a4 f,16 a c b |
	\key a \major
	\repeat volta 2 {
		d8 fis16 e8 gis16 cis8 | a4 e,16 a cis d | d8 e16 cis8 a16 b8 |
	}
	\alternative {
		{ gis8 e e16 a cis b | }
		{ gis8 e r4 | }
	}
	\key a \minor 
	\repeat volta 2 {
		d'8. f16 a4 ~ | a8 c,16 e a8 c | e,8 d b' gis |
	}
	\alternative {
		{ a2 | }
		{ a4. e,16 a | }
	}
	\repeat volta 2 {
		c16 e c a b d b gis | a8 c e a | c8. e,16 d8 b |
	}
	\alternative {
		{ c8 a r8 e16 a | }
		{ c8 a a16 c e a | }
	}
	\repeat volta 2 {
		d,8 b g' e | c4 a16 c e a | d,8 b g e |
	}
	\alternative {
		{ c'8 a a16 c e a | }
		{ a,8 e16 a c a b g | }
	}
	\repeat volta 2 { 
		e8 e16 g b d f e | a8. e16 c16 a b g | e8 e16 g b d f e |
	}
	\alternative {
		{ a,8 e16 a c a b g | }
		{ a16 b c d e8 a16 a |}
	}
	a4 r4 | 
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