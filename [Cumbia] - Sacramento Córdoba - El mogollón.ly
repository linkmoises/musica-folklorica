#(define output-id "CMB12")
\version "2.24.0"
\header {
	title = "El mogollón"
	subtitle = "Cumbia Cerrada"
	composer = "Atribuida a Sacramento Córdoba"
	arranger = "Transcripción: Moisés Serrano Samudio"
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
	\tempo "Allegro"
	\key g \major
}

melodia = \new Voice \relative c' {
	\partial 4 a'8 d16 fis |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 3 {
		a8 a g g | fis4 b,8 d | g fis g a | fis d a8 d16 fis | 
		a8 a g g | fis4 b,8 d | g fis g a | 
	}
	\alternative {
		{ fis d a8 d16 fis | }
		{ fis8 d a4 | }
	}
	\repeat volta 3 { 
		c8 c b a | c a4. | fis'8 d g fis | d fis a, a | 
		c8 c b a | c a4. | fis'8 d g fis |
	}
	\alternative {
		{ d fis a, a | }
		{ d fis a,4 | }
	}
	d,4 g8 b a c a4 | d,4 g8 b a c a4 | 
	\repeat volta 3 {
		d,16 d d8 g16 g b8 | a16 a c8 a16 a a8 | \break
		d,16 d d8 g16 g b8 | 
	}
	\alternative {
		{ \mark \markup { \small \musicglyph #"scripts.coda" } a16 a c8 a16 a a8 | }
		{ a16 a c8 a16 a a8 | r4 a8 d16 fis | }
	}
	\bar "||"
	\mark \markup { \small \italic "D.S. y luego a coda" }
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
	a,16 a c8 a16 a a8 |
	<a e'>16 <a e'> <a e'> <a e'> <a fis'> <a fis'> <a fis'> <a fis'> | 
	<a g'> <a g'> <a g'> <a g'> <a a'> <a a'> <a a'> <a a'> | 
	<a a'>4 r4 |
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
	\midi { \tempo 4 = 120 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}