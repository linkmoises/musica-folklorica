#(define output-id "POL01")
\version "2.24.0"
\header {
	title = "Contra Danza"
	subtitle = "Contradanza"
	composer = "Braulio Escolástico 'Colaco' Cortez (1904 - 1986)"
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
	\time 2/2
	\tempo 4 = 90
	\key f \major
}

melodia = \new Voice \relative c' {
	\partial 4 c8 f |
	\repeat volta 2 {
		\mark \markup { \small \musicglyph #"scripts.segno" }
		a a f a c a f' c | a'4 f r4 f8 g | a a f f d d a a | 
		c4 g r4 c,8 e | g8 g e g bes g e' c | g'4 e r4 e8 f | 
		g g c, c e e g, g | bes4 f r4 c8 f | a a f a c a f' c | 
		a'4 fis r4 d | ees d8 a~ a c d4 | c bes r4 bes8 d | 
		g d bes bes r8 g' d bes | f' c a a r8 a c d | bes4 c e g |
	}
	\alternative {
		{ f r4 r4 c,8 f | }
		{ f'4 f f f | }
	}
	\time 6/8
	\tempo 4. = 80
	f8 r8 r8 r8 a,8 c |
	\repeat volta 2 {
		f8 c a' f a c | bes4 g e8 f | g8 g bes d bes f | a4 c c,,8 f |
		a8 c f a f d | bes d f bes d, f | e c e g c e, |
	}
	\alternative {
		{ f4 r8 r8 a,8 c | }
		{
			\time 2/2
			\tempo 4 = 105
			f4 f f f |
		}
	}
	f4 r4 r4 c,8 c |
	\repeat volta 2 {
		f4 a8 c8~ c8 f a4 | c c a f | bes bes g c, | a' f r4 c,8 c |
		f4 a8 c~ c f d4 | bes g' e c
	}
	\alternative {
		{ g4 e' c c' | f, r4 r4 c,8 c | }
		{ c''8 d bes c a bes g a | }
	}
	f4 r4 r4 f8 f | f4 f,8 a~ a c bes4 |
	\bar ".|:"
	d g c, c'8 c | c4 f,,8 a~ a c bes4 | d c e g,8 g | f4 f8 a~ a c bes4
	\bar ":|.|:"
	\repeat volta 2 {
		d4 g c, c'8 c |
		c4 f,,8 a~ a c bes4 \bar "||"
		\mark \markup { \small \musicglyph #"scripts.coda" }
	}
	\alternative {
		{ d4 c e g,8 g | f4 f8 a~ a c bes4 | }
		{ d4 c e g,8 g }
	}
	f4 r4 r4 c8 f
	\mark \markup { \small \musicglyph #"scripts.segno" }
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
	d'4 c d e | <f, a c f>1 ~ | <f a c f>4 r4 r2
	\bar "|."
	\cadenzaOn
		\stopStaff
			\repeat unfold 1 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
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
	\midi { \tempo 4 = 90 }
}