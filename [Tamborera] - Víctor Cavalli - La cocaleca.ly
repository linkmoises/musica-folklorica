\version "2.23.2"
\header {
	title = "La cocaleca"
	subtitle = "Tamborera"
	composer = "Víctor Cavalli Cisneros (1907 - 2000)"
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
	\repeat segno 3 {
		d8 d fis a | d8. d16 ~ d8 d8 | cis cis b b | a8. e16 ~ e8 r8 |
		cis'8 cis b b | a8. cis16 ~ cis8 a8 | g b fis a | e8. d16 ~ d8 r8 |
		d8 d fis a | d8. d16 ~ d8 d8 | cis cis b b | a8. e16 ~ e8 r8 |
		cis'8 cis b b | a8. cis16 ~ cis8 a8 | g b fis a | e8. d16 ~ d8 r8 |
		\repeat volta 2 {
			d8 fis d fis | b8. fis16 ~ fis8 r8 | d8 fis d fis | a8. e16 ~ e8 r8 |
			e8 e g a | cis8. cis16 ~ cis8 b | a b g a | fis8. d16 ~ d8 r8 |
		}
	}
}

acordes = \chordmode {
	d2 | d2 | d2 | a2:7 |
	a2:7 | a2:7 | a2:7 | d2 |
	d2 | d2 | d2 | a2:7 |
	a2:7 | a2:7 | a2:7 | d2 |
	d2 | d2 | d2 | a2:7 |
	a2:7 | a2:7 | a2:7 | d2 |
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