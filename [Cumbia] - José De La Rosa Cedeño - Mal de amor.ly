#(define output-id "CMB06")
\version "2.24.0"
\header {
	title = "Mal de amor"
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
	\tempo 4 = 90
	\key c \major
}

melodia = \new Voice \relative c' {
	\partial 4 g'8 g' |
	\repeat volta 2 {
		\mark \markup { \small \musicglyph #"scripts.segno" }
		e16 c f d g f a g | e8 c e g | f d' d g, | c4 r16 c16 d c |
		a8 f a c | g e c e | d16 cis d e f g a b |
	}
	\alternative {
		{ g4 g,8 g' | \mark \markup { \small \musicglyph #"scripts.coda" } }
		{ g2 | }
	}
	\repeat volta 2 {
		\key c \minor
		r8 c,8 ees g | c4 ees8 d | c d ees d | c4 g | \break
		r8 c,8 ees g | c c d c | b c d c | aes2 |
		r8 d,8 f b | d d c b | g aes g f | aes4 g |
		r8 c,8 ees g | ees4 d | r8 g8 b, d | c2 |
		r8 c8 ees c | ees4 d | r8 g,8 b d |
	}
	\alternative {
		{ c2 | }
		{ 
			c8 c c c | c4 g8 g' | 
			\mark \markup { \small \italic "D.S. al coda" } 
			\bar "||"
		}
	}
	\cadenzaOn
		\stopStaff
			\repeat unfold 3 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
	%% salto para D.S al coda
	\mark \markup { \small \musicglyph #"scripts.coda" }
	\key c \major
	g8 r16 g16 g g g r16 |
	\repeat volta 4 {
		c,8 e g c | e,4 d | f8 a g b | 
	}
	\alternative {
		{ g2 | }
		{ g4 r8 c,16 c | }
	}
	\repeat volta 4 {
		c8 c a' a | e e d b | d f a b |
	}
	\alternative {
		{ g4 r8 c,16 c | }
		{ g'4. c8 | }
	}
	\repeat volta 4 {
		e,4 c8 b' | d,4 b8 g | c8 e f d |
	}
	\alternative {
		{ g4. c8 | }
		{ g2 | }
	}
	\repeat volta 2 { 
		g,8 g c c | a16 a8 d16 ~ d4 | g,8 g b b | g16 g8 c16 ~ c4 |
	}
	g8 g e' e | a,16 a8 f'16 ~ f4 | g8 g16 f8 e16 d8 | c4 r8 c16 c |
	c4 r4 | 
	\bar "|."
}

acordes = \chordmode {
	r4 |
	c4 g4:7 | c2 | g2:7 | c4 d4:m |
	f2 | c2 | d2:m |
	g2 |
	g2 |
	g2 | c2:m | c2:m | c2:m |
	c2:m | c2:m | c2:m | f2:m | 
	f2:m | g2:7 | g2:7 | c2:m |
	c2:m | g2:7 | g2:7 | c2:m | 
	c2:m | g2:7 | g2:7 |
	c2:m | 
	c2:m | c2:m |
	s2 | s2 | s2 | s2 | s2 | s2 |
	g2 | c2 | g2:7 | g2:7 |
	c2 |
	c2 |
	c2 | g2:7 | g2:7 |
	c2 |
	c2 |
	c2 | g2 | c4 f4 |
	g2:7 | 
	g2:7 |
	c2 | g2:7 | g2:7 | c2 | 
	c2 | f2 | g2:7 | c2 |
	c2 |
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