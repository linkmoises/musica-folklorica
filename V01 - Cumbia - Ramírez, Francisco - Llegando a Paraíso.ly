#(define output-id "CMB14")
\version "2.24.0"
\header {
	title = "Llegando a Paraíso"
	subtitle = "Danzón Cumbia"
	composer = "Francisco 'Chico Purio' Ramírez (1903 - 1987)"
	arranger = "Transcripción: Heliodoro Patiño"
	tagline = \markup{ \image #X #8 #"logo-musica-panama.eps" }
}

\paper {
	#(set-paper-size "letter")
	top-margin = 15
	bottom-margin = 10
	left-margin = 15
	right-margin = 15
	print-page-number = false
	indent = 0
}

\markup \vspace #2

global = {
	\time 2/4
	\tempo "Andantino"
	\key d \minor
}

melodia = \new Voice \relative c' {
	\partial 16*5 d16 f a d f |
	\repeat volta 2 {
		d8 a16 cis8 e,16 bes'8 | d,8 d f16 a c a | e8 cis16 e8 g16 bes8 |
		a8 d,16 f a d f e | g8. e16 cis8 a | f'8 d f, a | cis8 e,16 cis'8 a16 f8 |
	}
	\alternative {
		{ d8. d16 f16 a d f | }
		{ d,8 r8 f16 a d f | }
	}
	\repeat volta 2 {
		a4 g8 f | e4 g,16 a cis e | g4 f8 e | d8 r8 f,16 a d f |
		d8 a16 f'8 f16 e8 | d8 a f' e | d8 cis16 d8 e16 f8 | 
	}
	\alternative {
		{ d8 r8 f,16 a d f | }
		{ d8 r8 d8 d | d4 r8 f,8 |}
	}
	\repeat volta 2 {
		a8 c16 bes8 d16 cis8 | e16 g c,8( c) c | e8 g16 bes,8 d16 f8 |
	}
	\alternative {
		{ a,8 f r8 f8 | }
		{ a8 f r8 bes8 | }
	}
	\repeat volta 2 {
		bes8 d16 f8 bes16 g8 | c,4( c8) c8 | e8 g16 bes,8 d16 f8 | 
	}
	\alternative {
		{ a,8 f r8 bes8 | }
		{ a8 f bes'16 g d f | }
	}
	\repeat volta 2 { 
		a16 f c e g bes, d f | a8, f bes'16 g d f |
	}
	a,8 f r8 c'16 e | g8 g r16 c,16 f f | f4 r8 |
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
	\midi { 
		\set Staff.midiInstrument = #"violin"
		\tempo 4 = 85 %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
	} 
}