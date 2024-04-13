\version "2.23.2"
\header {
	title = "Margarita Vargas"
	subtitle = "Cumbia"
	composer = "Hernán Vergara (1935 - 2006)"
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
	\partial 4 c'16 e g g |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 3 {
		g16 e c a c a g b | d8 r8 b16 d f f | f d b g a g b g | 
	}
	\alternative {
		{ c8 r8 c16 e g g | }
		{ c,8 r8 r16 c,16 e g | }
	}
	\repeat volta 2 { 
		c8 c16 a ~ a d c8 | b8 g r16 g16 b d | f8 d16 b ~ b g' f8 | e8 c r16 c,16 e g |
	}
	c8 c16 a ~ a d c8 | b8 g r16 g16 b d | f8 f16 e ~ e e d8 | c8 r8 r8 c16 c | 
	c8 r8 r16 a16 c e |
	\repeat volta 2 {
		g8. e16 g8. c16 | f,8. d16 g8. c16 | e,8 c f d | g4 r16 g,16 c e |
	}
	\repeat volta 2 {
		g8 r16 e16 g e c a | f'8 r16 d16 f d b g | e'8 c d b |
	}
	\alternative {
		{ g4 r16 g16 c e | }
		{ g,4 r8 c,16 c | }
	}
	\repeat volta 3 {
		f16 a c f e8 c | e,16 g c e d8 b | g16 b g d f a f c |
	}
	\alternative {
		{ e8 g r8 c,16 c | }
		{ e8 g r8 c,16 c | }
	}
	\repeat volta 2 {
		f16 a8 c16 ~ c16 f 16 e8 | c8. g16 c8. g'16 | b,8. g16 f16 a f c |
	}
	\alternative {
		{ e8 g r8 c,16 c | }
		{ e8 g r8 c,16 f ~ | }
	}
	f16 a8 c16 f8 e8 | c8. g16 c e c g | b8 g f16 a f d | c16 d e f g8 c16 c |
	c16 g e' e c8 f |
	\repeat volta 2 {
		d8 f d16 b g8 | r16 g16 d' d b8 e | c8 e c16 a g8 | r16 g16 e' ~ e c8 f |
		d8 f d16 b g8 | r16 g16 d' d b8 e
	}
	\alternative {
		{ c8 e d16 a g8 | r16 g16 e' e c8 f | }
		{ c8 r16 g16 e g c e | }
	}
	\repeat volta 3 {
		g8 e16 c8 a'16 d,8 | g8. d16 b8 g16 g | g8 f16 a ~ a c e8 |  
	}
	\alternative {
		{ g,4 e16 g c e | }
		{ g,4 r8 c,16 c | }
	}
	\repeat volta 3 {
		f16 a c d e8 c | e,16 g c e d8 b | g16 b g d f a f c |
	}
	\alternative {
		{ e8 g r8 c,16 c | }
		{ e8 g r8 c,16 f ~ | }
	}
	f16 a8 c16 ~ c16 f e8 | c8. g16 c8. g'16 | b,8. g16 f a f c | e8 g r8 c,16 f ~ |
	f16 a8 c16 ~ c16 f e8 | c8. g16 c8. g'16 | b,8. g16 f a f d | c16 d e f g8 c16 c |
	c16 g e' e c8 f |
	\repeat volta 4 {
		d8 f d16 b g8 | r16 g16 d' d b8 e | 
		\mark \markup { \small \musicglyph #"scripts.coda" }
	}
	\alternative {
		{ c8 e d16 a g8 | r16 g16 e' e c8 f | }
		{ c8 r8 c16_\markup { \small \italic "D.S. al coda" } e g g | }
	}
	\break 
	%% salto para D.S al coda
	\mark \markup { \small \musicglyph #"scripts.coda" }
	\repeat volta 2 {
		c,8 e c16 a g8 | r16 g16 e' e c8 f | d8 f d16 b g8 | r16 g16 d' d b8 e8 |
	}
	c8 e c16 a g8 | r16 g16 e' e c8 f | d8 r8 r16 g,16 b d | g8 g r8 b,8 | 
	c8 r8 r4 |
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