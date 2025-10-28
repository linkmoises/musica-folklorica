#(define output-id "CMB13")
\version "2.24.0"
\header {
	title = "Mamá Eva"
	subtitle = "Danzón Cumbia"
	composer = "Vicente Gómez Gudiño (1903 - 1964)"
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
	\key g \major
}

melodia = \new Voice \relative c' {
	r8 d'16 g ~ g fis e d |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		c8 fis16 e8 d16 c8 | b8 d16 g8 b,16 d8 | e8 a,16 c8 fis,16 a8 |
		g8 b16 d g( fis) g e | %% suposición
		a8 fis16 d8 a'16 fis8 | g16( a) b a g( fis) e d | cis8 a'16 g8 fis16 e8 |
	}
	\alternative {
		{ d8 d16 g ~ g fis e d | }
		{ d8 r16 d,16 ees( d) cis d | } %% suposición 
	}
	\key g \minor
	\repeat volta 2 {
		g2 ~ | g16 bes( d) g bes( g) fis a | g2 | r16 d,16 ees( d) g fis a g |
		bes( a) c bes d( c) ees d | %% suposición
		g16( a) bes g d bes g' fis | d8 a16 c ~ c4 ~ | c8 r16 d,16 ees( d) cis d |
		a'2 | r16 d,16( fis) a c d f g | 
		a2 | %% suposición
		r16 d,16 fis g a fis d fis | d c ees c a c a fis | 
		d fis a c d f bes a | g8 bes,16 d ~ d4 |
		r16 a'16 fis d ees c a f | %% suposición
		g2 | r16 bes d g bes g fis a | g2 |
		r16 d,16 ees d g bes a fis | g d' c b f' ees d aes' |
		g16 fis8 g16 d f ees d | %% suposición
		c8. c16 g' ees c g | ees'2 | c8 ees16 g8 fis16 g8 | 
		r8 ees8 c8 r8 | bes8 d16 g8 fis16 g8 | r8 d8 c16 d fis g |
		a fis d fis d c ees r16 | %% suposición
		a, c a fis a c d f |
	}
	\alternative {
		{ \mark \markup { \small \musicglyph #"scripts.coda" } g8. d16 bes8 g16 a ~ | a8 r16 d,16 ees d cis d | }
		{ g'8 g g g | }
	}
	g8 d16 g g fis _\markup { \small \italic "D.S. al coda" } ees d | 
	\bar "||"
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	d8 r16 d16 d d d r16 |
	\repeat volta 2 {
		bes'16 bes8 bes16 a8 a16 g ~ | g8. d8. bes16 d | f8. c16 ees8 g16 bes, ~ |
		bes8. g8. r8 | bes16 bes8 bes16 c8 c16 f ~ | f8. d8. bes16 d | 
		f8. c16 ees8 g16 bes, ~ | bes8. g r8 | 
		a'8 fis16 d8 a'16 fis8 | g8 d16 bes8 g'16 fis8 | d16 c8 a16 fis'16 d c a |
		c16 bes g8 r4 |
	}
	bes'16 bes8 bes16 a8 a16 g ~ | g8 d16 bes8 c16 d8 | r8 r16 d16 d8 g16 g |
	g4 r4 |
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