\version "2.23.2"
\header {
	title = "La Espina"
	subtitle = "Cumbia Atravesada"
	composer = "Abraham Vergara Cedeño (1904 - 1981)"
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
	\time 6/8
	\tempo "Allegro"
	\key a \major
}

melodia = \new Voice \relative c' {
	\partial 4 e'8 e |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 8 {
		e a, b cis d e ~ | e a, b cis d e | fis fis d b a gis ~ |
	}
	\alternative {
		{ gis8 e4 r8 e'8 e | }
		{ gis,8 e4 r8 cis8 e | }
	}
	\repeat volta 2 {
		a4 a8 a a cis ~ | cis cis a8 ~ a4 r8 | d8 fis4 b,8 e gis, ~ |
	}
	\alternative {
		{ gis8 e4 r8 cis8 e | }
		{ gis8 e4 r8 a8 a | }
	}
	a8 a cis fis d b | 
	\repeat volta 6 {
		b' gis e ~ e a a | 
	}
	\alternative {
		{ a8 a, cis fis d b | }
		{ a'8 a, cis fis r8 r8 | } %% r8 porque no se ve que sigue
	}
	b8 gis e r8 cis e | 
	\repeat volta 4 {
		a8 a a fis d gis ~ |
	}
	\alternative {
		{ gis4 e8 ~ e8 cis e | }
		{ gis4 e8 ~ e8 e e | }
	}
	\bar "||"
	\mark \markup { 
		\small "Al" 
		\small \musicglyph #"scripts.segno" 
		\small "3 veces y" 
		\small \musicglyph #"scripts.coda" 
	}
		\bar "||"
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
	gis4 e8 ~ e4 r8 | e8 e4 fis8 gis4 | a8 r8 r4 r4 |
	\bar "|."
}

acordes = \chordmode {
	s4 |
	a2. | a2. | d2. | 
	e2.:7 | e2.:7 |
	a2. | a2. | d2. | 
	e2.:7 | e2.:7 |
	a4. d4. | e2.:7 |
	a4. d4. | e2.:7 | e2.:7 | 
	a4. d4. | e2.:7 |
	s8 s8 s2. s2. %% este hack es para que la comprobación de tiempo no marque errores y muestre acordes de línea siguiente
	e2.:7 | e2.:7 | a2. |
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
\layout { ragged-last = ##t }
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4. = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada
}