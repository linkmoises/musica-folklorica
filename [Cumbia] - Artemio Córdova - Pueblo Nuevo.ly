#(define output-id "CMB10")
\version "2.24.0"
\header {
	title = "Noche Interiorana (Pueblo Nuevo)"
	subtitle = "Cumbia"
	composer = "Artemio De Jesús Córdova (1896 - 1988)"
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
	\key d \major
}

melodia = \new Voice \relative c' {
	\partial 4 d16 fis a d |
	\repeat volta 2 {
		g,16( b e g) a,( cis e a) | fis d a fis d fis a d | g, b e g a, cis e a | 
		d,4 r16 a16( b g) |
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
		{ d4 r16 a16 b g | }
	}
	\bar "||"
	%%% de aquí en adelante se transcribe tal cual esta en la partitura original
	%%% probablemente este incompleta la transcripción física
	a4 r8 a16 a |
	\repeat volta 2 {
		a16 cis e g b8 r16 d,16 | a4 cis8 d | e g b,8. a'16 | cis,8 a ~ a16 cis e g |
		a, cis e g b8 r16 cis,16 | a'4 cis,8 d | e8. g16 b,8 fis' | a,4 r8 a16 a |
	}
	\repeat volta 2 {
		g8 b d g | e8. cis8. a8 | d8. b8. g8 |
	}
	\alternative {
		{ a4 r8 a16 a | }
		{ a4 cis8 e | }
	}
	\repeat volta 2 {
		g8 g d d | fis fis cis d | e g b, a |
	}
	\alternative {
		{ cis8 a ~ a cis16 e | }
		{ cis8 a a16 cis e g | }
	}
	b8 d,16 fis a4 ~ | a cis,8 d | e8. g16 b8. fis16 | a,4 a16 cis e g |
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