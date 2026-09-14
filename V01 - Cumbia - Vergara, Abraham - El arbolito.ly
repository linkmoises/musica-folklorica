\version "2.23.2"
\header {
	title = "El arbolito"
	subtitle = "Cumbia atravesada"
	composer = "Abraham Vergara Cedeño (1904 - 1981)"
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 10
	bottom-margin = 10
	left-margin = 10
	right-margin = 10
	print-page-number = false
	indent = 0
}

\markup \vspace #2

global= {
	\time 6/8
	\tempo Allegro
	\key d \major
}

melodia = \new Voice \relative c' {
	r4. r8 a8' a | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	a c b g b4 | a8 r4 r8 a8 a | a c b g b4 | a8 r4 r8 a8 a |
	\repeat volta 2 {
		a8 c b g b d ~ | d d a4 a | cis8 e4 a8 g fis ~ | fis d a4 a8 a |
	}
	a8 c b g b d ~ | d d a4 a | cis8 e4 a8 g fis ~ | fis d a4 a |
	\repeat volta 2 {
		g8' b4 g8 b4 | fis8 a4 fis8 a4 | e8 g4 e8 a fis ~ | fis d a4 a |
	}
	r8 a8 cis e d4 | 
	\repeat volta 2 {
		fis8 d b4 a | r8 a8 cis e d4 | 
	}
	fis8 d a4' b8 a |
	\repeat volta 2 {
		g8 e a4 b8 a | fis8 d a4' b8 a |
	}
	g8 e a4 b8 a | fis d a4 a | r8 a8 cis e d4 |
	\repeat volta 2 {
		fis8 d b4 a | r8 a8 cis e d4 |
	}
	\mark \markup { \small \musicglyph #"scripts.coda" }
	fis4 r4 a8, \mark \markup { \small \italic "D.S. y luego a coda" } a \bar "||"
	\break 
	\mark \markup { \small \musicglyph #"scripts.coda" }
	fis4.' r4. | a8, a4 b8 cis4 | <fis, d'>8 r8 r8 r4. |
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
