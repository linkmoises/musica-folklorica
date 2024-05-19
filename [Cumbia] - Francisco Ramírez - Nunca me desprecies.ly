\version "2.23.2"
\header {
	title = "Nunca me desprecies"
	subtitle = "Cumbia"
	composer = "Francisco 'Chico Purio' Ramírez (1903 - 1987)"
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
	\key d \minor
}

melodia = \new Voice \relative c' {
	\repeat segno 2 {
		r8 a'16 f' ~ f d a f' | d8 a16 f' ~ f d a f' | d8 a16 f' ~ f d a f' | d8 a16 f' ~ f d a f' | 
		d8 a16 f' ~ f d a f' | d8 a16 f' ~ f d a f' | d8 a16 f' ~ f d a f' | d8 a16 f' ~ f d a f' | 
		d8. d16 d d d8 |
		\repeat volta 2 {
			r16 f,8 a16 d8 d16 d | d2 | r16 f,8 a16 d8 d | c2 |
			r16 a16 a a bes8 bes16 bes | e8 e16 e d8 e16 d | cis4 a |
			r16 e8 f16 g8 a16 f ~ | f d8. ~ d4 |
		}
		\repeat volta 2 {
			r16 f'8 e16 d8 cis16 d ~ | d8. bes16 ~ bes4 | r16 f'8 e16 d8 cis16 d ~ | d8. a16 ~ a4 |
			r16 a8 a16 d8 e16 f ~ | f8. e16 ~ e4 | r16 a,8 g'16 f8 e16 f ~ | f8. bes,16 ~ bes4 |
		}
		\repeat volta 2 {
			f'4 d | e8. cis16 ~ cis4 | a8 cis e d16 f ~ | f8. d16 ~ d4 |
			f4 d | e8. cis16 ~ cis4 | a8 cis e d16 f ~ | f8. d16 ~ d4 |
			f8 f d d16 g ~ | g g8 e16 cis8 a | a8 cis e d16 f ~ | f8. d16 ~ d4 |
			f8 f d d16 g ~ | g g8 e16 cis8 a | a8 cis e d16 f ~ | f8. d16 ~ d4 |
		}
	}
	f4 d | e ~ e16\staccato a,\staccato cis\staccato e\staccato | a8\staccato g\staccato f\staccato e\staccato |
	d16\staccato e\staccato f\staccato g\staccato a\staccato r16 d\staccato d\staccato | d8-> r8 r4 |
	\bar "|."
}

acordes = \chordmode {
	s2 | d2: m | d2: m | d2: m |
	d2: m | d2: m | d2: m | d2: m |
	d2: m | d2: m | d2: m | d2: m |
	c2 | c2 | bes2 | a2:7 |
	a2:7 | d2:m | d2:m | g2:m |
	c2 | f2 | bes2 | e2:7 |
	a2:7 | d2:m | d2:m | a2:7 |
	a2:7 | d2:m | d2:m | a2:7 |
	a2:7 | d2:m | d2:7 | g2:m |
	a2:7 | d2:m | d2:m | g2:m |
	a2:7 | d2:m | d2:m | a2:7 |
	a2:7 | d2:m | d2:m |
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
	\midi { \tempo 4 = 85 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}