\version "2.23.2"
\header {
	title = "El Gallo Canelo"
	subtitle = "Contradanza"
	composer = "José Miguel Leguízamo (1903 – 1985)"
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
	\time 2/2
	\tempo "Allegro"
	\key g \major
}

melodia = \new Voice \relative c' {
	r2 d4.' c8 |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		b4 d a d | g2, e4.' d8 | c4 e c e | c2. ~ c8 b |
		a4 b c d | fis fis ~ fis g8 fis | e4 e ~ e fis8 e |
		d2 d4. c8 | b4 d a d | g2, e4.' d8 | c4 e c e | 
		c2. c8 b | a4 b c d | e d cis d | fis d c a |
		\alternative {
			{ g2 d4.' c8 | }
			{ g1 \mark \markup { \small \musicglyph #"scripts.coda" } \bar "||" }
		}
	}
	\break
	\time 6/8
	r4 r8 r8 d4 |
	\repeat volta 2 {
		b8' b b b b4 | b8 c a b g4 | a8 a a a b c ~ | c4. r8 d4, | \break
		c8' c c c c4 | c8 d c b a4 | b4. c4. | d4. r8 g4, | \break
		e8' e e e e e ~ | e fis e fis e4 | d8 d d d d d ~ | d e d e d4 | \break 
		\alternative {
			{ c8 c c c c c ~ | c d c b a4 | b4. c4. | d4. r8 d4, | }
			{ c8' c c c c r8 | d8 d4 e8 fis4 | \break }
		}
	}
	\time 2/2
	g4 r4 | d4. c8 | b4 d  \mark \markup { \small \italic "D.S. y luego a coda" }  a d \bar "||" |
	\mark \markup { \small \musicglyph #"scripts.coda" }
	g4, r4 d' r4 | g1 |
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
