\version "2.23.2"
\header {
	title = "Los Sentimientos del Alma (transcripción original)"
	subtitle = "Danzón Cumbia"
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

\markup \vspace #2 %

global= {
	\time 2/4
	\tempo "Allegro"
	\key g \minor
}

melodia = \new Voice \relative c' {
	\partial 8. d16 g a | 
	\repeat volta 2 {
		bes8 g d'16 bes g' d | c8 a8 ~ a16 d c d | a'8 fis a16 fis d a | c8 bes16 g16 ~ g16 d' g a |
		bes8 a bes16 g d bes | f'8 ees16 c ~ c g fis g | c8 ees g16 bes a g | fis8 a ~ a16 d, cis d |
		a'8 fis16 d ~ d c a8 | 
	}
	\alternative {
		{ g4 r16 d16 g a | }
		{ g4 r4 | }
	}
	\repeat volta 2 {
		d'4 ~ d16 d c d | f8 ees16 c ~ c a f8 | c'4 ~ c16 a bes c | ees8 d16 bes ~ bes g d8 |
		bes''4 a8 g | fis2 | d'4 c8 a | c8. bes8. d16 bes |
		a8 c16 a g8 bes16 g | fis8 d ~ d16 d c d | a'8 fis16 d ~ d c a8 | g4 r4 | 
	}
	\key g \major
	\repeat volta 2 {
		g8 a16 b ~ b c d8 | fis8. d16 fis8 a | c8. g16 b8 g | fis8 d4. |
	}
	\repeat volta 2 {
		g,8 a16 b ~ b c d8 | fis8. d16 fis8 a | c8. c16 b8 a | fis8 d4. |
	}
	\repeat volta 2 {
		g,8 a16 b ~ b c d8 | fis8 fis16 d16 ~ d16 fis16 a8 | b8 g e8. d16 | fis4 d |
	}
	g,8 a16 b ~ b c d8 | fis8 fis16 d16 ~ d16 fis16 d8 |
	\repeat volta 2 {
		g8 b g e | a16 fis d8 fis16 a fis d |
	}
	g8 b g e | a16 fis d8 g,16 b g e |
	\repeat volta 2 {
		d8 fis16 a ~ a c e8 | d4 g,16 b g e |
	}
	d8 c'16 e ~ e a fis8 | g8 d16 d d8 g16 g | g4 r4 |
	\bar "|."
}

acordes = \chordmode {
%% acordes
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
	\midi { \tempo 4 = 88 }
}