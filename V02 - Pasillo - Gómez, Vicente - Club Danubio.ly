#(define output-id "PAS18")
\version "2.24.0"
\header {
	title = "Club Danubio"
	subtitle = "Pasillo"
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
	\time 3/4
	\tempo "Allegro"
	\key g \major
}

melodia = \new Voice \relative c' {
	\set Timing.beamExceptions = #'() %% fragmenta en grupos de corchea
	\repeat volta 2 {
		r8 g' b d cis e | d b' r8 g fis a | r8 g e g fis d | c e a, b c e |
		r8 fis, a c b d | c a' r8 fis e g | r8 fis d fis e c | b d g, a b d |
		r8 g, b d cis e | d b' r8 g fis a | r8 g e cis a g' | fis b a2 |
		r8 fis, a d fis a | b g fis a g e | dis fis e cis a e | d'4 r8 d8 d4 |
	}
	\repeat volta 2 {
		r8 d8 d d d d | d c fis, a d c | fis, a d c fis, a | e' d g, b e r8 |
		g,8 b e4. d8 | c d a c g' fis | c d g fis c d | a' g fis g d b |
		g b' b b b b | b a gis a e c | b' a gis a e c | a' g fis g d b |
		a' g fis g e fis | d e c d b c | a e' d4 fis8 a | g4. g8 g4 |
	}
	\key c \major
	\repeat volta 2 {
		r8 g,8 a b c d | e g r8 c, e4 | r8 a, b cis d e | f a r8 d, f4 |
		r8 cis d e f a | c b r8 f c' b | r8 f b a r8 f | e dis e a g e |
		r8 g, a b c d | e g r8 c, e4 | r8 a, b cis d e | f a r8 d, f4 |
		r8 a8 b a f d | a' g r8 c, a' g | r8 b, a' g f b, |
		\mark \markup { \small \musicglyph #"scripts.coda" } c4. c8_\markup { \small \italic "D.C. al coda" } c4 |
	}
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	c4 r4 g' | c4 r2 |
	\bar "|."
	\cadenzaOn
		\stopStaff
			\repeat unfold 3 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
}

acordes = \chordmode {
	s2. | g2. | g2. | a2.:m |
	a2.:m | d2.:7 | d2.:7 | g2. |
	g2. | g2. | a2.:7 | d2.:aug |
	e2.:m | d2. | a2.:7 | d2.:7 |
	g2. | d2.:7 | d2.:7 | g2. |
	g2. | d2.:7 | d2.:7 | g2. |
	g2.:7 | c2. | c2. | g2. |
	f2. | a2.:m | d2.:7 | g2. |
	g2. | c2. | a2.:7 | d2.:m |
	d2.:m | g2.:7 | g2.:7 | c2. |
	c2. | c2. | a2.:7 | d2.:m | 
	f2. | c2. | g2.:7 | c2. |
	c4 r4 g4 | c4 r2 |
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
	\midi { \tempo 4 = 140 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}