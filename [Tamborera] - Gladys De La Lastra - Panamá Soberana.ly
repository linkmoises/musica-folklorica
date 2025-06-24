#(define output-id "TAM03")
\version "2.24.0"
\header {
	title = "Panamá Soberana"
	subtitle = "Tamborera"
	composer = "Gladys De La Lastra (1932 - 2005)"
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
	\key g \major
}

melodia = \new Voice \relative c' {
	\repeat segno 3 {
		r16 g'8 g16 b8 d16 e ~ | e16 e8 d16 b8 g16 e' ~ | e16 e8 d16 b8 g16 d' ~ | d2 |
		r16 a8 a16 b8 c16 d ~ | d d8 c16 b8 a16 d ~ | d d8 c16 b8 a16 b ~ | b2 |
		r16 g8 g16 b8 d16 e ~ | e16 e8 d16 b8 g16 e' ~ | e16 e8 d16 b8 g16 d' ~ | d2 |
		r16 a8 a16 b8 c16 d ~ | d d8 c16 b8 a16 d ~ | d d8 c16 b8 a16 g ~ | g2 |
		r16 g8 g16 g8 a16 b ~ | b2 | r16 g8 a16 g8 e16 fis ~ | fis2 |
		r16 fis8 fis16 fis8 a16 d ~ | d16 d d c b8 a16 d ~ | d16 d8 c16 b8 a16 b ~ | b2 |
		r16 g8 g16 g8 a16 b ~ | b2 | r16 g8 a16 g8 e16 fis ~ | fis2 |
		r16 fis8 fis16 fis8 a16 d ~ | d16 d d c b8 a16 d ~ | d16 d8 c16 b8 a16 g ~ | g2 |
	}
	\bar "|."
}

acordes = \chordmode {
	g2 | g2 | g2 | d2:7 |
	d2:7 | d2:7 | d2:7 | g2 | 
	g2 | g2 | g2 | d2:7 |
	d2:7 | d2:7 | d2:7 | g2 | 
	g2 | g2 | g2 | d2:7 |
	d2:7 | d2:7 | d2:7 | g2 | 
	g2 | g2 | g2 | d2:7 |
	d2:7 | d2:7 | d2:7 | g2 | 
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