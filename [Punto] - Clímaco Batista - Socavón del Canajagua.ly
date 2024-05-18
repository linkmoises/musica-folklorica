\version "2.23.2"
\header {
	title = "Socavón del Canajagua"
	subtitle = "Punto"
	composer = "Clímaco Batista Díaz (1907 - 1978)"
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
	\time 6/8
	\tempo "Allegro"
	\key g \major
}

melodia = \new Voice \relative c' {
	r4 r8 r8 d'8 e |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 5 {
		f f e e c e | d d b d b d | c a c d b a | g4. r8 d'8 e |
		f f e e c e | g g b, b d d | fis fis a, c b a | 
	}
	\alternative {
		{ g4. r8 d'8 e | }
		{ g,4. r8 g8 g | }
	}
	\repeat volta 2 {
		c4 d e | b8 g4 d'8 e4 | c8 a4 fis4 d8 | g4. r8 c8 d |
		e d c e d c | e d b r8 g'8 fis | a8 fis d c8 a4 |
	}
	\alternative {
		{ g4. r8 g8 g | }
		{ g4. r8 f'8 f | }
	}
	\repeat volta 2 {
		f e e e c e | d4 r8 r8 f f | f e e e c e |
	}
	\alternative {
		{ d4 r8 r8 f8 f | }
		{ d4 r8 r8 g,8 g | }
	}
	\repeat volta 4 {
		g8 b d a c e | d fis a, a g g | g b d a c e |
	}
	\alternative {
		{ fis, fis d r8 g8 g |}
		{ d'8 r8 b8 d c4 | }
	}
	e8 d4 fis8 a4 | g4 b,8 d c4 | e8 d4 fis8 a4 | g8 g, b d a c |
	e a, a fis' d d | \mark \markup { \small \musicglyph #"scripts.coda" }
	\bar "||"
	g4 r8 r8 \mark \markup { \small \italic "D.S. al coda" } d8 e | 
	\bar "||"
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	g8 g, b d a c | e a, a fis' d d | g g, b d a c | e a, a fis' d d 
	g4 r8 r8 r4 | 
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
	\midi { \tempo 4 = 120 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}