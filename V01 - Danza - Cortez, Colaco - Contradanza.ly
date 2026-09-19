#(define output-id "POL01")
\version "2.24.0"
\header {
	title = "Contradanza"
	subtitle = "Contradanza"
	composer = "Braulio Escolástico 'Colaco' Cortez (1904 - 1986)"
	tagline = \markup{ \image #X #8 #"extend/logo-musica-panama.eps" }
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
	\partial 8 a16 d |
	\repeat volta 2 {
		\mark \markup { \small \musicglyph #"scripts.segno" }
		fis fis d fis a fis d' a | fis'8 d r8 d16 e | fis fis d d b b fis fis | 
		a8 e r8 cis16 e | g16 g e g b b g b | e8 cis r8 a16 cis | 
		e16 e a, a16 cis cis e, e | %% compás no confirmado
		g8 fis r8 a,16 d | fis fis d fis a a fis a | 
		fis'8 dis r8 b8 | cis8 b16 fis8 a16 b8 | a8 g r8 g16 b | e16 b g8 r16 e'16 b g |
		d'16 a fis8 r16 fis16 a d | 
		cis8 e a, e' | %% compás no confirmado
		<d fis,>8 <d fis,>8 <d fis,>8 <d fis,>8 |
	}
	\alternative {
		{ d8 r8 a,16 d | }
		{ <d' fis,>8 <d fis,>8 <d fis,>8 <d fis,>8 | }
	}
	
	<d fis,>8 r8 fis,8 a |
	\key d \major
	\time 6/8
	\repeat volta 2 {
		d8( a fis') d( fis a) | g4 e cis8 d | e8( g b) b( g d) | fis4 a d,,8 fis |
		fis8( a d) fis8( d b) | %% compás no confirmado
		g( b d) g( b, d) | cis8( a cis) e( a cis,) |
	}
	\alternative {
		
		{ 
			\time 2/4
			d8 r8 fis,8 a | 
		}
		{ 
			\time 2/4
			<d fis,>8 <d fis,>8 <d fis,>8 <d fis,>8 | 
		}
	}
	\key d \major
	\time 2/4
	d4 r8 a,8 |
	\repeat volta 2 {
		d8 fis16 a8 d16 fis8 | a8 a fis d | g g e a, | 
		fis'8 d r8 d8 | %% compás no confirmado
		d,8 fis16 a8 d16 b8 | g e cis' a | e cis' a a' | 
	}
	\alternative {
		{ d,8 r8 a,8 | }
		{ d'4 r8 d16 d | }
	}
	d8 d,16 fis8 a16 g8 | 
	\repeat volta 4 {
		b8 e a, a'16 a | a8 d,,16 fis8 a16 g8 | b8 a cis e,16 e |
		
	}
	%% compases a discreción de quien transcribe
	\alternative {
		{ d8 d16 fis8 a16 g8 | }
		{ d16 e fis g a8 d16 d | } 
	}
	d2 |
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
		\tempo 4 = 75 %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
	} 
}