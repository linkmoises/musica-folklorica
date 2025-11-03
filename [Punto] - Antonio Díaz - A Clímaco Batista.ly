\version "2.23.2"
\header {
	title = "Bajo el cielo de Tonosí (A Clímaco Batista)"
	subtitle = "Punto"
	composer = "Antonio 'Toño' Díaz (1941 - 2001)"
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
	\time 6/8
	%%\tempo Andantino
	\key d \minor
}

melodia = \new Voice \relative c' {
	<d' a'>2.\ff ~ \startTrillSpan
	<d a'>2. ~
	<d a'>2. ~
	<d a'>2. ~ 
	<d a'>2. ~ \break
	<d a'>2. ~
	<d a'>2. ~
	<d a'>2. \stopTrillSpan 
	
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

	\break
	r4 r8 r8 a4 |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		d8 d e f g r8 | a8 a g a g a | bes8 bes4 a8 a4 | g4 e a, |
		cis8 cis d e f4 | g8 g f g f g | bes a g a e e |
	}
	\alternative {
		{ g8 f d4 a | }
		{ g'8 f d4 f8 f | }
	}
	\repeat volta 2 {
		f8 d a d cis a | g4. r8 e'8 e | e8 cis a cis a g |
	}
	\alternative {
		{ f4. r8 f'8 f | }
		{ f,4. r8 g'8 g | }
	}
	bes8 a e4 d | f8 g f4 e8 d | cis e g4 f8 e | d a f'4 e |
	\repeat volta 2 {
		d8 a f'4 e8 d | cis8 e g4 f | e8 a, g'4 f8 e |
	}
	\alternative {
		{ d8 a f'4 e | }
		{ d4 \mark \markup { \small \italic "D.S. al coda" } r4 a4 | }
	}
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	cis4 cis cis | a8 a4 bes8 cis4 | d4 r4 r4 |
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