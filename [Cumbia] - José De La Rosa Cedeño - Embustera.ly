#(define output-id "CMB03")
\version "2.24.0"
\header {
	title = "Embustera"
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
	\tempo "Andantino"
	\key d \major
}

melodia = \new Voice \relative c' {
	\partial 4 d''8 d16 b |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		e,16 cis' a fis d b' g e | cis8 a' fis d | b8 b'16 g8 e16 cis8 | a'4 r8 g,16 a |
		b8 g' g g | a, fis' d b | 
		e16 cis a d cis b g8 | %% este compás es una suposición
	}
	\alternative {
		{ a8 d' d b | }
		{ a,4 ~ a | }
	}
	\repeat volta 2 { 
		r8 fis16 b8 d16 fis8 | b4 d8 b | cis ais b g | fis4 e |
		r8 ais,16 cis8 fis16 ais8 | cis4 b8 ais | 
		g fis cis e | %% este compás es una suposición
	}
	\alternative {
		{ d4 b | } %% este compás es una suposición
		{ d8 b8 d' b | } %% este compás es una suposición
	}
	\repeat volta 2 {
		cis8 ais b g | fis8. e16 cis'8 ais | b g fis e | d8. fis16 a8 cis | 
		e, b' d, a' | cis,8. e16 g8 b | d, a' cis, g' |
	}
	\alternative {
		{ \mark \markup { \small \musicglyph #"scripts.coda" } b,4 d'8 b | }
		{ b,4 d'8 \mark \markup { \small \italic "D.S. al coda" } d16 b | \bar "||" }
	}
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	b,4 r16 a16 b d |
	\repeat volta 2 {
		fis4 r16 a,16 b d | g8. e16 a8 fis |
	}
	\alternative {
		{ d8. g16 e8 cis | a'4 r16 a,16 b d | }
		{ d8 g e a | cis, a r16 a'16 cis g ~ | } %% este compás es una suposición
	}
	\repeat volta 2 { 
		g8 a a fis
		g8. e16 a8 fis | d g e cis |
	}
	\alternative {
		{ a'4 r16 fis16 a cis | }
		{ a4 fis,16 a d fis | }
	}
	\repeat volta 2 {
		a,8 g' e cis | a4 fis16 a d fis | 
		a,8 g'8 b g | %% este compás es una suposición
	}
	\alternative {
		{ a4 fis,16 a d fis | } %% este compás es una suposición
		{ a4 r8 d16 d | d4 r4 | }
	}
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