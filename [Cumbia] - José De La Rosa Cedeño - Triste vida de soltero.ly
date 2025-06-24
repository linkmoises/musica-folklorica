#(define output-id "CMB09")
\version "2.24.0"
\header {
	title = "Triste vida de soltero"
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
	\key d \minor
}

melodia = \new Voice \relative c' {
	\partial 4 bes''8 a |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		g16 e cis a a'8 g | f16 d a f g'8 f | e16 cis a e g bes a g | f8 f' e d | c16 e g bes c,16 e g bes |
		a16 f d a f a d cis | e8 e16 bes8 d16 cis8 |
	}
	\alternative {
		{ a4 bes'8 a | }
		{ a,4 a' | }
	}
	\repeat volta 2 {
		a,4 d8 e | f8. a8. f8 | e8 e g cis, | f4 d |
		r8 fis8 g a | bes8. d8. g,8 | a8 a c fis, | g2 ~ |
		g8 e f g | a4 cis8 e | d8 d c e, | bes'8 a ~ a4 |
		r8 a,8 d e | f4 a8 c | e, e g bes |
	}
	\alternative {
		{ 
			d,4 ~ d | 
			\mark \markup { \small \musicglyph #"scripts.coda" }
		}
		{ 
			d4 bes'8 a |
			\mark \markup { \small \italic "D.S. al coda" } 
			\bar "||"
		}
	}
	\cadenzaOn
		\stopStaff
			\repeat unfold 2 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
	%% salto para D.S al coda
	\mark \markup { \small \musicglyph #"scripts.coda" }
	{ a,4 r8 e16 f | }
	\repeat volta 4 {
		g8. bes16 d8 f | d8. a16 a'8 c | e, a d, cis 
	}
	\alternative {
		{ f8. d16 ~ d8 e,16 f | }
		{ f'16 d8 f16 a8 d16 a | }
	}
	cis8 a16 g8 e16 cis8 | d8. f16 a8 d16 a | cis8 a16 g8 e16 cis8 | d8. a16 f'8 d16 a |
	\repeat volta 2 {
		f'8. a,16 f'8 d16 a | e'8. a,16 e'8 cis16 a | e'8. a,16 a'8 e16 g |
	}
	\alternative {
		{ d8. a16 f'8 d16 a | }
		{ d8 f16 f f f a bes | }
	}
	a8 a,16 a e'8 a | d,8 f16 f f f a bes | a8 cis, e a |
	\repeat volta 2 {
		d,8 f16 e g f bes a | cis,8 a ~ a cis16 e |
	}
	d4 r8 d16 d | d4 ~ d |
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
	\midi { \tempo 4 = 90 }
}