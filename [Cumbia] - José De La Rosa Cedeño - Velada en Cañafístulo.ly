#(define output-id "CMB21")
\version "2.23.2"
\header {
	title = "Velada en El Cañafístulo"
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

global= {
	\time 2/4
	\tempo "Andantino"
	\key d \major
}

melodia = \new Voice \relative c' {
	r8 a''16 fis8 e16 d8 | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		g16 b e, a g fis e cis | d8 fis,16 a d16 fis e d |
		e8 b16 d8 cis16 b8 | g'16 b e, a g fis e cis |
		d8 d,16 fis a d cis b | e16 cis a d cis b fis g |
	}
	\alternative {
		{ a8 a'16 fis8 e16 d8 | }
		{ a4 a'8 a, | }
	}
	\repeat volta 2 {
		d8 d16 fis8 fis16 a8 | e4. a,8 | 
		cis8 cis16 e8 e16 g8 | e8 d4. |
		d,8 fis16 a8 d16 fis8 | a8 g16 b8 g16 e8 |
		a8 fis16 d8 e16 cis8 \mark \markup { \small \musicglyph #"scripts.coda" } |
	}
	\alternative {
		{ d4 r8 a8 | }
		{ d8 a'16 \mark \markup { \small \italic "D.S. al coda" } fis8 e16 d8 | }
	}
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" } a4 r16 fis'16 a b |
	\repeat volta 2 {
		b8 a d b | d cis a b | e, g b d |
	}
	\alternative {
		{ a4 r16 fis16 a d | }
		{ a4 r8 d,8 | }
	}
	fis8 e16 g8 d16 fis8 | a4 r8 d,8 |
	fis8. e16 g b d cis |
	\repeat volta 2 {
		a4 r8 d,8 | fis8 e16 g8 d16 fis8 |
		a,8 <fis a>16 <fis a> <fis a> <fis a> <fis a> <fis a> |
		a8 g16 b8 d16 fis8 | a,8 <fis a>16 <fis a> <fis a> <fis a> <fis a> <fis a> |
		<fis a>8 g16 b8 d16 fis8 |
	}
	a,4 r8 d16 d | d4 r4 |
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