#(define output-id "POL02")
\version "2.24.0"
\header {
	title = "Polka"
	subtitle = "Polka"
	composer = "Braulio Escolástico 'Colaco' Cortez (1904 - 1986)"
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
	\key g \major
}

melodia = \new Voice \relative c' {
	\relative c' {
	\partial 8 d'16 d |
	\repeat volta 2 {
		\mark \markup { \small \musicglyph #"scripts.segno" }
		b8 d g b | a c r8 c16 a | fis8 d fis e | d4 r8 d16 d |
		b8 d b' g | e a r8 a16 g |
	}
	\alternative {
		{ g4 r8 d16 d | }
		{ g4 r8 b,16 c | }
	}
	\repeat volta 2 {
		d8 d e g | fis a r8 a,16 b | c8 e d fis | e8 g ~ g4 |
		g,8 g16 b e8 e16 b | d8 a d r8 | a8 b16 c d8 e16 fis |
	}
	\alternative {
		{ <b, g'>4 r8 b16 c | }
		{ <b g'>4 r8 <d g>16 b' | }
	}
	\repeat volta 2 {
		<b, d>8 g' b, d | <d, g>4 r8 b'16 c | d8 e fis g |
		a4 r8 fis16 a | d,8 fis a, c | fis,8 a r8 b16 c | 
		d8 e fis b |
	}
	\alternative {
		{ <b, g'>4 r8 d16 b' | }
		{ <b, g'>4 r8 b16 d | }
	}
	\repeat volta 2 {
		\mark \markup { \small \musicglyph #"scripts.segno" }
		g8 g <c, b'> <c b'> | <d fis> <d fis> r8 c16 d |
		c8 c <c a'> <c a'> |
	}
	\alternative {
		{ <b g'>8 <b g'> r8 b16 d | }
		{ <b g'>8 <b g'> r8 g16 a | }
	}
	\bar ".|:"
	b8 b <d fis,> <d fis,> | <e, c'> <e c'> r8 a16 b | c8 d e fis | 
	<b, g'>8 <b g'> r8 g16 a |
	\bar ":|."
	<b g'>8 <b g'> r8 d16 d |
	\bar "||"
	<b g'>4 \fermata r8 r8 |
	\bar "|."
	}
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