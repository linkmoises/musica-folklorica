#(define output-id "CMB10")
\version "2.26.0"
\header {
	title = "Noche Interiorana (Pueblo Nuevo)"
	subtitle = "Danzón Cumbia"
	composer = "Artemio De Jesús Córdova (1896 - 1988)"
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
	\key d \major
}

melodia = \new Voice \relative c' {
	\partial 4 d16 fis a d |
	\repeat volta 2 {
		g,16( b e g) a,( cis e a) | fis d a fis d fis a d | g, b e g a, cis e a | 
	}
	\alternative {
		{ d,4 d,16 fis a d |}
		{ d4 r16 a16( b g) | }
	}
	\repeat volta 2 {
		a16 d fis a e g fis e | d8 a16 d8 fis16 e8 | cis8 a16 g8 b16 a8 | fis8 a ~ a16 a b g |
		a16( d fis a e g fis e) | d8 r8 a16 d fis d | e8 e16 d8 cis16 b8 |
	}
	\alternative {
		{ a4 r16 a16( b g) | }
		{ a4 r16 a'16( b g) | }
	}
	\repeat volta 2 {
		a8 fis d fis | a d, fis a | g fis a e ~ | e4 r16 g16 a fis |
		g8 e cis e | g cis, e g | fis e fis d ~ | d4 r16 cis d cis |
		b8 fis a g | fis b dis fis | a fis e g | e4 r16 fis16 g fis |
		d8. a16 ~ a8 d16 fis | e8 b d fis | a8 a16 fis8 fis16 e8 |
	}
	\alternative {
		{ d4 r16 a'16 b g | }
		{ d4 r8 a16 a | }
	}
	\repeat volta 2 {
		a16 cis e g b8 d,16 fis | a8. cis, d8 | %% a4 cis8 d | 
		e g b,8. a'16 | 
		cis,8 a ~ a a16 a | a cis e g b8 d,16 fis | e8. g16 b,8 fis' | 
		e8 g b, b | 
		a4 r8 a16 a |
	}
	\repeat volta 2 {
		g8 b d g | e8. cis8. a8 | d8. b8. g8 |
	}
	\alternative {
		{ a4 r8 a16 a | }
		{ a4 r8 cis16 e | }
	}
	\repeat volta 2 {
		g8 g d d | fis fis cis d |
	}
	\alternative {
		{ e g b, a | cis8 a ~ a cis16 e | }
		{ e8 g b,8. b16 | a4 ~ a8 a16 a | }
	}
	\repeat volta 2 { 
		d,16 fis a d e, g b e | cis8 a d fis | b, g16 e'8 cis16 b8 |
	}
	\alternative {
		{ a4 ~ a8 a16 a | }
		{ a8. a16 a8 d16 d | }
	}
	d4 r4 |
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
		\with {
			midiInstrument = #"violin"
		}
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
		\tempo 4 = 90 %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
	} 
}
