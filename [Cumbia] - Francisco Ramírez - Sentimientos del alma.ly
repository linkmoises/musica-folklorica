\version "2.23.2"
\header {
	title = "Los Sentimientos del Alma"
	subtitle = "Danzón Cumbia"
	%%poet = "Leonidas Cajar"
	composer = "Francisco 'Chico Purio' Ramírez (1903 - 1987)"
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 25
	left-margin = 15
	right-margin = 15
	bottom-margin = 25
	print-page-number = false
}

\markup \vspace #2 %

global= {
	\time 2/2
	\tempo Allegro
	\key g \minor
}

violinUno = \new Voice \relative c'' {
	r2 r8 d,8 g a |
	\repeat volta 2 {
		bes4. g8 d' bes g' d | d c a4. d8 a' g | 
		fis4. d8 a' fis d a | c bes g4. d'8 g a |
		bes4. g8 bes g d bes | f'4 ees4. a,8 c d |
		ees4. g8 g bes a g | fis4 a4. d,8 d d |
		a'4 fis8 d( d) c bes a |
	}
	\alternative {
		{ g2( g8) d g a | }
		{ g2 r2 | }
	}
	\repeat volta 2 {
		d'2( d8) d c d | f4 ees8 c( c) a fis4 |
		c'2( c8) c bes c | ees4. d8( c2) |
		bes'2 a4 g8 fis( | f) a4.( a2) |
		d2 c4 a8 c( | c) bes4. r4 d4 |
		a8 c4 g8 bes4 g8 fis( | f8) d4.( d8) d d d |
		a'4 fis8 d( d) c bes a |
	}
	\alternative {
		{ g2 r2 | }
		{ g2( g8) g g a | }
	}
	bes4. g8 d' bes g' d | d c a4. d8 a' g | 
	fis4. d8 a' fis d a | c bes g4. d'8 g a |
	bes4. g8 bes g d bes | f'4 ees4. a,8 c d |
	ees4. g8 g bes a g | fis4 a4. d,8 d d |
	a'4 fis8 d( d) c bes a | g2 r4 g'8 g |
	g4 r4 r4 g,4 | 
	||
	\key g \major
	\repeat volta 2 {
		g8 a4 b8 c4 d8 fis( | fis) d4 d8 fis4 a4 | 
		c2 b4 g8 fis( | fis ) d4. r4 g,4 | 
		g8 a4 b8 c4 d8 fis( | fis) d4 d8 fis4 a4 |
		c2 b4 g8 fis( |
	}
	\alternative {
		{ fis8 ) d4. r4 g,4 | }
		{ fis'8 d4 d8 fis4 a | }
	}
	\repeat volta 2 {
		g2 c,4 d8 fis8( | fis) d4 d8 fis4 a4 |
		g2 c,4 d8 fis8( |
	}
	\alternative { 
		{ fis8) d4 d8 fis4 a4 | }
		{ fis8 d4 d8 fis4 a4 | }
	}
	d,4 d d d8 g | r4 r8 g8( g2 | g2 ) r2 |
	\bar "|."
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín" }
			<< \global \violinUno >>
			\addlyrics { %% lírica
			}
	>>
\layout { }
%%\midi { }
}
