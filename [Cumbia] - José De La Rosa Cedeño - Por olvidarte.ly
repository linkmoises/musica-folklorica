\version "2.23.2"
\header {
	title = "Por olvidarte"
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
	\tempo 4 = 90
	\key g \major
}

melodia = \new Voice \relative c' {
	\partial 8 d16 g | 
	\repeat volta 2 {
		b16 g b d c a c e | d8 b16 d8 g16 b8 | c,8 a16 a'8 fis16 d8 |
		g8 b, r16 d16 cis d | e8 e16 c'8 c16 a8 | d8 g, b g | a8 b16 g8 fis16 e8 |
	}
	\alternative {
		{ d4 r8 d,16 g | }
		{ d'4. r8 | }
	}
	d4 cis8 d |
	\key g \minor
	\repeat volta 2 {
		bes'4. g8 | a8 bes a fis | g2 ~ | g8 g, bes d | 
		f2 | ees8 g f ees | d2 ~ | d8 d cis d |
		fis4 a8 fis | r8 d8 c d | g4 bes8 g | r8 bes,8 c d |
		fis4 a8 d, | c8 c a' fis |
	}
	\alternative {
		{ g2 | r8 d8 cis d | }
		{ g8 g ~ g g | g4 r8 d,16 g | }
	}
	\key g \major
	\repeat volta 2 {
		b16 g b d c a c e | d8 b16 d8 g16 b8 | c,8 a16 a'8 fis16 d8 |
		g8 b, r16 d16 cis d | e8 e16 c'8 c16 a8 | d8 g, b g | a8 b16 g8 fis16 e8 |
	}
	\alternative {
		{ d4 r8 d,16 g | }
		{ d'4 r8 d8 | }
	}
	\repeat volta 2 {
		b8 d16 g8 b16 c,8 | a8. a'8. d,8 | g8 g c, e | fis8. d8. d8 |
		b8 d16 g8 b16 c,8 | a8. c'8. b8 | d8. g,16 c8 a |
	}
	\alternative {
		{ fis8. d8. d8 | }
		{ fis d16 b8 d16 g8 | }
	}
	\repeat volta 4 {
		c,8 ~ c a a' | fis d16 b8 d16 g8 | b8 b c, a' | fis d16 b8 d16 g8 |
	}
	b4 a | g r4 |
	\bar "|."
}

acordes = \chordmode {
	r8 | 
	g4 d4:7 | g2 | d2:7 | c2 |
	d2 | g2 | a2:7 |
	d2:7 |
	d2:7 |
	d2:7 | g2:m | d2:7 | g2:m | 
	g2:m | f2 | ees2 | d2:7 |
	d2:7 | d2:7 | d2:7 | g2:m |
	g2:m | d2:7 | d2:7 |
	g2:m | g2:m |
	g2:m | g2 |
	g4 d4:7 | g2 | d2:7 | c2 |
	d2 | g2 | a2:7 |
	d2:7 |
	d2:7 |
	g2 | d2:7 | g4 c4 | d2:7 |
	g2 | d2:7 | g4 c4 | 
	d2:7 |
	d2:7 |
	c2 | d2:7 | g4 c4 | d2:7 |
	g4 d4:7 | g4 |
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
	\midi { \tempo 4 = 90 } 
}