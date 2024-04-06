\version "2.23.2"
\header {
	title = "La Realidad"
	subtitle = "Danzón Cumbia"
	composer = "José De La Rosa Cedeño (1907 - 1990)"
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

global= {
	\key f \major
	\time 2/2
	\tempo "Allegretto"
}

violinUno = \new Voice \relative c' {
	r4 a'8 d ~ d f g4 |
	\repeat volta 2 {
		\mark \markup { \small \musicglyph #"scripts.segno" }
		cis,8 e g bes bes, d f a | cis,4 a8 cis ~ cis e g4 | 
		f8 e d cis d e f e | d4 a8 f' ~ f d a4 | e'8 g, g g bes4 d | 
		cis4 a8 cis ~ cis e g4 | f8 a e g f e d cis | 
		d f d a f d fis a | ees' d cis d a c bes a |
		g4 d'8 bes g' d bes g | bes' g d bes bes' g d bes | 
		a4 f'8 d a f' d a | g'8 f e d cis bes a g | 
		f4 d8 e f g bes a | 
		d4 cis8 a4 g8 e4 |
		\mark \markup { \small \musicglyph #"scripts.coda" }
		\bar "||"
	}
	\alternative {
		{ d4 a'8 d ~ d f a4 | }
		{ d,,8 d4 d8 d d d d | }
	}
	d4 r8 a'8 d4 f | d2 r4 a4 | f8 f f a d4 cis8 a( | a) g8( g2.) |
	r8 a4 a8 cis4 d8 e( | e) cis ~ cis4 r4 g4 | bes4 bes8 bes a4 g | f2 r2 |
	r8 fis4 fis8 a4 ees'4 | d4 c2 d,8 d | fis4 ees' d d8 c( | 
	c) bes ~ bes2. | r8 g'4 g8 f4 e | f4. d8( d4) a | 
	e'4 e8 e8 cis4 a | d4 d d d | 
	d a8 d( d) f a4 | 
	\mark \markup { \small "D.S. al coda" }
	\bar "||"
	\cadenzaOn
		\stopStaff
			\repeat unfold 1 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	d,,2 r2 | 
	\bar "||"
	\key b \minor
	d8 fis a d fis4 d | b4 g g' e | cis a a' fis | d1 |
	d,8 fis a d fis4 d | b g g' e | cis a a' fis | d2 r8 d8 d d |
	g4 b e, a8 cis,( | cis) a8 ~ a4 r4 g'8 e8( | e8) cis4 a8 ~ a8 a' fis4 |
	d2 r8 d8 d d | g4 b e, a8 cis,( | cis) a ~ a4 r4 g'8 e( | 
	e) cis4 a8 ~ a a' fis4 | d2 r8 d,8 d fis | 
	\repeat volta 2 {
		a4. d8 g,4 e'8 cis( | cis) a4 a8 g'4 e | fis d b g | 
	}
	\alternative { 
		{ a2 r8 d,8 d fis | }
		{ a4 r8 a8 a d fis d | }
	}
	\bar ".|:"
	b4 g' e cis | a' r8 a,8 a d fis d | b4 g e8 e cis4 |
	a'4 r8 a8 a d fis d | 
	\bar ":|."
	b4 g' e cis | a'4 r8 a,8 a d fis d | 
	b4 g e8 e cis4 | a'8 a r8 a8 a4 d8 d | d1 
	\bar "|."
}


harmonies = \chordmode {
%% acordes de guitarra / mejorana
}


\score {
<<
	\language "espanol"
	\new ChordNames {
		\set chordChanges = ##t
		\set noChordSymbol = ##f
		\override ChordName.font-size = #0.9
		\override ChordName.direction = #UP
		\harmonies
	}
	\new Staff
		<< \global \violinUno >>
		\addlyrics { %% lírica
		}
		\override Lyrics.LyricText.font-size = #-0.5
>>
\layout {}
%%\midi {}
}