#(define output-id "PUN05")
\version "2.24.0"
\header {
	title = "Vírgen de Guadalupe"
	subtitle = "Punto"
	composer = "José Miguel Leguízamo (1903 - 1981)"
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
	\key d \minor
}

melodia = \new Voice \relative c' {
	d'2. ~ \fermata \startTrillSpan | d \fermata ~ | d \fermata ~ | d \fermata \stopTrillSpan |
	
	% Percusión 1
	s4 
	\once \override NoteHead.style = #'cross
	\once \override NoteHead.staff-position = #0
	a4. s8 | 

	% Percusión 2
	s4
	\once \override NoteHead.style = #'cross
	\once \override NoteHead.staff-position = #0
	a4. s8 |

	% Percusión 3
	s4 
	\once \override NoteHead.style = #'cross
	\once \override NoteHead.staff-position = #0
	a4. s8 |

	r4. r8 d8 e | f8 e4 d8 cis4 |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		d8 a f4 f8 a | d8 f4 e8 d4 | cis8 d e4 g8 g | g f4 e8 d4 |
		e8 cis a4 e8 e | e8 g4 f8 e4 | g8 f f4 d'8 e | f8 e4 d8 cis4 |
		d8 a f4 f8 a | d8 f, a d a c | bes2. | g8 bes d g bes4 | 
		f,8 a d f a f | e e g f e4 | d4. r4. | g,8 bes d g bes4 |
		f,8 a d f a f | e e g f e4 |
	}
	\alternative { 
		{ d4. r8 d8 e | f e4 d8 cis4 | }
		{ d4. r8 a'8 a | }
	}
	\repeat volta 2 {
		a8 g f a g f | a g e ~ e g g | g f e g f e | 
	}
	\alternative {
		{ a8 f d4 a'8 a | }
		{ a8 f d4 f8 f | }
	}
	\repeat volta 2 {
		f8 f4 e8 d4 | cis8 d e4 g8 g | g8 g4 f8 e4 |
	}
	\alternative {
		{ d8 e f4 f8 f | }
		{ d4 -> f8 a8 a4 | }
	}
	\repeat volta 3 { 
		d,4 -> f8 a8 a4 | cis,4 -> e8 g( a4 ) | cis,4 -> e8 g( a4) |
	}
	\alternative {
		{ d,4 f8 a8 a4 | }
		{ d,4 r8 r8 d8 e | f8 e4 \mark \markup { \small \italic "D.S. luego 1 y 3" } d8 cis4 | \bar "||" \break }
		{ d4 f8 a8 a4 | d,4 f8 a8 a4 | d,4 f8 a a4 | }
	}
	cis,2. | a8 a4 a8 a4 | d2. |
	\fine
}

acordes = \chordmode {
	s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
	d2.:m | bes2. | a2.:7 | g2.:m |
	a2.:7 | a2.:7 | d2.:m | d2.:m |
	d2.:m | d2.:7 | g2.:m | g2.:m |
	f2. | a2.:7 | d2.:m | g2.:m |
	f2. | a2.:7 |
	d2.: m | d2.:m |
	d2.:m | 
	d2.:m | a2.:7 | d2.:m |
	a2.:7 | 
	a2.:7 |
	g2.:m | a2.:7 | a2.:7 |
	d2.:m |
	d2.:m |
	bes2. | a2.:7 | a2.:7 |
	d2.:m |
	d2.:m | d2.:m |
	d2.:m | d2.:m | d2.:m |
	a2. | a2.:7 | d2.:m |
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
	\midi { \tempo 4. = 80 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}