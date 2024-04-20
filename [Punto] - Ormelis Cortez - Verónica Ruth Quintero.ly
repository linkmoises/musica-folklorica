\version "2.23.2"
\header {
	title = "Verónica Ruth Quintero"
	subtitle = "Punto"
	composer = "Ormelis Cortez (1953 - presente)"
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
	\tempo 4 = 90
	\key c \major
}

melodia = \new Voice \relative c' {
	<a e' a e'>2.\ff ~ \startTrillSpan
	<a e' a e'>2. ~
	<a e' a e'>2. ~
	<a e' a e'>2. ~ 
	<a e' a e'>2. ~ \break
	<a e' a e'>2. ~
	<a e' a e'>2. \stopTrillSpan 
	s2. | s2. | s2. 
	\break  
	r4. r8 c'8 b |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 3 {
		a4 e8 c' b a ~ | a8 e4 r8 c'8 b | a4 e8 c' b d, ~ | d4. gis4. b8 r4 r8 d8 c | %% en partitura original ese compás tiene 4 tiempos
		b4 e,8 d' c b ~ | b e,4 r8 d' c | 
	}
	\alternative {
		{ b4 e,8 c' b <a e c> ~ | <a e c>4. r8 c8 b | }
		{ b4 e,8 c' b4 | }
	}
	a8 r8 r8 r8 c8 c |
	\repeat volta 2 {
		e8 a, a c a a | f' e d r8 b b | d g, g b g g | e' d c r8 a a |
		c f, f a f f | d' c b r8 gis gis | b e, e gis e e | 
	}
	\alternative {
		{ c'8 b a r8 c c | }
		{ c8 b a r4 e'8 | }
	}
	a4 g8 f4 e8 | d4. d8 e f | g4 f8 e4 d8 | c4. ~ c8 d8 e |
	f4 e8 d4 c8 | b4. ~ b8 c d | e4 d8 c4 b8 | a8 r8 r8 e8 e c' |
	\repeat volta 2 {
		a4 e8 d b' gis ~ | gis e r8 d'8 d b |
		gis4 e8 e' c a ~ | a4 r8 e8 e c' |
	}
	a4 e8 d b' gis ~ | gis e r8 d'8 d b | gis4 e8 e' c a ~ | a4 r8 e8 e c' |
	a4 e8 d' b gis ~ | 
	\mark \markup { \small \musicglyph #"scripts.coda" }
	\bar "||"
	gis e r8 d' d b | gis4 e8 e' c a ~ | a r8 r8 r8 c8 b |
	\mark \markup {
		\small \italic "Al" 
		\small \musicglyph #"scripts.segno" 
		\small \italic "2 veces y" 
		\small \musicglyph #"scripts.coda" 
	}
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
	gis4 e4 r4 | e'8 e4 e8 e4 | 
	<c e a>2. |
	\bar "|."
	\cadenzaOn
		\stopStaff
			\repeat unfold 2 {
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
	\midi { \tempo 4 = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}