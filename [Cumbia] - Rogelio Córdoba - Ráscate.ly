\version "2.23.2"
\header {
	title = "Ráscate"
	subtitle = "Cumbia"
	composer = "Rogelio 'Gelo' Córdoba (1911 - 1959)"
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
	\time 2/2
	\tempo 4 = 90
	\key d \major
}

melodia = \new Voice \relative c' {
	\partial 4. d8 fis a |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 3 {
		d4. g,8 b4 e | cis a r4 e' | a8 d,4 g8 b,4 e | cis a2. |
		r8 g4 b8 d4 fis4 | a,2 fis'4. g,8 | e'4. b8 d4. a'8 |
	}
	\alternative {
		{ cis,4 a r8 d,8 fis a | }
		{ cis4 a r2 | }
	}
	d,8 fis a d b4 g8 e | cis'4. a8 ~ a4 d,4 ~ | d8 fis a d b4 g8 e |
	cis'4. a8 ~ a4 d,4 ~ | d8 fis a d b4 g8 e | cis'4. a8 ~ a4 d, ~ |
	d8 fis a d b4 g8 e | cis'8 a r8 a cis e d fis | r4 a,4 ~ a g8 b |
	e4 a,8 a cis e d fis | r4 a,4 ~ a g8 b | e4 a,8 a cis e d fis |
	\bar "||"
	\mark \markup { \small \musicglyph #"scripts.coda" }
	r4 a,4 ~ a g8 b | e4 a,8 a cis e d fis |
	\repeat volta 2 {
		a,2 fis'4 d8 b | g'4 a,8 a cis e d fis | a,2. g8 b | e4 a,8 a cis e d fis |
	}
	a,2. g8 b | e4 a, r8 d,8 fis a |
	\repeat volta 2 {
		d4. g,8 b4 e | cis a r4 e' | a8 d,4 g8 b,4 e | cis4 a2. |
		r8 g4 b8 d4 fis | a,2 fis'4. g,8 | e'4. b8 d4. a'8 |
		cis,4 a2. | r8 g4 b8 d4 fis | a,2 fis'4. g,8 | e'4. b8 d4. a'8 |
	}
	\alternative {
		{ cis,4 a r8 d,8 fis a | }
		{ cis4 a r2 | \bar "||" }
	}
	\mark \markup { \small \italic "D.S. al coda" }
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
	\repeat volta 2 {
		a2. g8 b | e4 a,8 a cis e d fis | a,2 fis'4 d8 b | g'4 a,8 a cis e d fis |
	}
	r4 a,4 ~ a g8 b | e4 a,8 a cis e d fis | r4 a,4 ~ a g8 b | e4 a,8 a cis e d fis |
	r4 a,4 ~ a g8 b | e4 r8 d,8 fis a d fis | a,4 b cis a | d r4 r2 |
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
	\midi { \tempo 4 = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}