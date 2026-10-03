#(define output-id "POL02")
\version "2.24.0"
\header {
	title = "Verónica Ruth"
	subtitle = "Contradanza"
	composer = "Ornilo 'Colaquito' Cortez (1945 - presente)"
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
	\time 4/4
	\tempo "Allegro moderato" 4 = 100
	\key d \major
}

melodia = \new Voice \relative c' {
	\partial 4 d8 fis |
	a8 a4 d8 fis fis d cis | e4 g a, e8 fis | a8 a4 cis8 e e cis e | d4 fis a, d,8 fis |
	a8 a4 d8 fis fis d fis | e4 g g b | a e g fis8 e | d2 r4 d,8 fis |
	a8 a4 d8 fis fis d fis | e4 g a, e8 g | a8 a4 cis8 e e cis e | d4 fis a, d,8 fis |
	a8 a4 d8 fis fis d fis | e4 g g b | a e g fis8 e | d2 r4 d,8 fis |
	a8 a4 d8 fis fis d fis | e4 g a, e8 g | a8 a4 cis8 e e cis e | d4 fis a, d,8 fis |
	a4 ces16 c8. c4 d | ces4 b g' e | fis d e cis | <fis, d'> <fis d'> <fis d'> <fis d'> |
	\time 6/8
	\tempo "Più mosso" 4. = 100
	d'4 r8 r8 a'8 fis |
	\repeat volta 2 {
		d8 a fis' d fis a | g4 e8 r8 g8 e | cis a e' a, a' g | fis4 d8 r8 a' fis |
		d a fis' d fis a |
	}
	\alternative {
		{ 
			\tempo "Presto" 2 = 100
			g4 e8 r8 g8 e | cis8 a e' a, a' g | fis4 d8 r8 a'8 fis | 
		}
		{ g4 e8 r8 g8 b | }
	}
	a8 fis d g e cis |
	\time 4/4 
	\tempo "A tempo" 4 = 100
	<fis, d'>4 <fis d'> <fis d'> <fis d'> | <fis d'> r8 d'8 b g b g |
	\repeat volta 2 {
		a4 cis a,8 cis e g | fis4 d g8 b g e | a4 cis a,8 cis e g | fis4 d8 d' b g b g |
		a4 cis a,8 cis e g | fis4 d g8 b g e | a4 cis a,8 cis e g | fis4 d8 d' b g b g |
	}
	a8 a r8 <cis e>8 <cis e>4 <d fis>8 <d fis> | <d fis>1 |
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
		\tempo 4 = 100 %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
	} 
}