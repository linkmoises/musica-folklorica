#(define output-id "TAM06")
\version "2.24.0"
\header {
	title = "Guararé"
	subtitle = "Tamborera"
	composer = "Ricardo Fábrega (1905 - 1973)"
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
	\key c \major
}

melodia = \new Voice \relative c' {
	\repeat segno 5 {
		r4 r8 g'16 e' ~ | e16 c8 a16 f'8 d16 g ~ | g4 r8 g,16 e' ~ |
		e16 c8 a16 f'8 d16 b ~ | b g8. r8 g16 e' ~ | e c8 a16 f'8 d16 g ~ |
		g4 r8 g,16 e' ~ | e16 c8 a16 f'8 d16 b ~ | b16 g8. r8 g16 c ~ |
		c a8 f16 g8 a16 b ~ | b g8. r8 g16 a ~ | a16 f8 d16 f8 a16 g ~ |
		g4 r8 g16 c ~ | c16 a8 f16 g8 a16 b ~ | b g8. r8 g16 a ~ |
		a16 f8 d16 f8 a16 g ~ | g4 r8 e'16 e | 
		\repeat volta 2 {
			e8 f16 f f8 g16 g | g4 r8 e16 e | e16 e8 e16 f8 f |
		}
		\alternative {
			{ g4 r8 e16 e | }
			{ g4 r4 | }
		}
	}
	\bar "|."
}

acordes = \chordmode {
	r2 | c4 f4 | g2:7 | c4 f4 |
	g2:7 | c4 f4 | g2:7 | c4 f4 |
	g2:7 | f2 | g2:7 | f2 |
	g2 | f2 | g2:7 | f2 |
	g2:7 | 
	c4 f4 | g2:7 | c4 f4 |
	g2:7 |
	g2:7 |

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