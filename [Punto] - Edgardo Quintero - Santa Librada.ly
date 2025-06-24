#(define output-id "PUN06")
\version "2.24.0"
\header {
	title = "Punto Santa Librada"
	subtitle = "Punto"
	composer = "Edgardo Quintero (1938 - 2023)"
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
	\key g \major
}

violinSolo = \new Voice \relative c'' {
	\tempo "Andante maestoso"
	\partial 4 e8( a) |
	e'4.~ e8 d8( cis8) | c4.~ c8 e,8( a) | e'4.~ e8 b8( bes) | a4.~ a8 e8( a) |
	e'4.~ e8 a,( gis) | g8( e b) c( e b') | bes( a f) fis( a e') | ees( d a) c( e, g) |
	fis( g gis) a( e b) | c( d dis e) c16( e g b) | a8( e f fis) d16( fis a c) | b8( gis a fis) a16( b c d) |
	e8( d) c b( a16) c( d e) | g8( fis) e d( c16) d( dis e) | b'8( a e) g( fis c) | e( d) c b gis( a) |
	\bar "||"
	<d fis,>2.~ | <d fis,>2.~ | <d fis,>4.~ <d fis,>8 e8\tenuto e\tenuto | e8( d c) b( a) <d fis,>~ | 
	<d fis,>2.~ | <d fis,>2.~ | <d fis,>4.~ <d fis,>8 e8\tenuto e\tenuto | e( d c) b( a g) | 
	e( c b c) a'( g) | fis( f fis) a( g e) | c'\tenuto b\tenuto a\tenuto \< g\tenuto fis\tenuto a\tenuto \! |
	<g,, d' b' g'>2.\ff ~ \startTrillSpan
	<g d' b' g'>2. ~
	<g d' b' g'>4 \stopTrillSpan r8 r4.
	\bar "||"
}

melodia = \new Voice \relative c' {
	\set Score.currentBarNumber = #31
	
	% Compás 31
	s4 
	\once \override NoteHead.style = #'cross
	\once \override NoteHead.staff-position = #0
	a'4. s8 | 

	% Compás 32
	s4
	\once \override NoteHead.style = #'cross
	\once \override NoteHead.staff-position = #0
	a4. s8 |

	% Compás 33
	s4 
	\once \override NoteHead.style = #'cross
	\once \override NoteHead.staff-position = #0
	a4. s8 |

	\tempo "Allegro"
	r4. r8  g8 \mf b \bar "||" | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	d( cis d) e( d) g( ~ | g d) b ~ b d d |
	d( e d) g( b,) d( ~ | d c) a ~ a fis a | c( b c) d( c) a'( ~ | a fis) d ~ d a' gis |
	a( fis d) e( d) c( ~ | c b) d ~ d g, b | d( cis d) e( d) g( ~ | g d) b ~ b f' f |
	f( e dis) e( b) d( ~ | d c) a ~ a e' e | e( a g) fis( e) g( ~ | g d) b' g d c( ~ |
	c a) a' fis d b( | b g4) r8 e'8 e | e( a g) fis( e) g( ~ | g d) b' g d c( ~ |
	c a) a' fis d b | r8 g' \f \staccato fis\staccato g\staccato fis\staccato g\staccato |
	\repeat volta 2 {
		a\staccato g\staccato d\staccato b'\staccato a\staccato g\staccato | 
		fis\staccato a\staccato gis\staccato a\staccato gis\staccato a\staccato | 
		c\staccato a\staccato d,\staccato d'\staccato c\staccato a\staccato |
	}
	\alternative {
		{ b\staccato g\staccato fis\staccato g\staccato fis\staccato g\staccato | }
		{ b\staccato b,( \p d g fis a) | }
	}
	\bar "||"
	g g, b e d4 | a8 a( b c d e) | fis a, c e d4 | 
	g,8 \mf ^\markup { \italic pizz. } r8 b e d r8 |
	\repeat volta 2 {
		e8 d r8 e d r8 | a8 r8 c e d r8 | e8 d r8 e d r8 |
		\mark \markup { \small \musicglyph #"scripts.coda" }
	}
	\alternative {
		{ g,8 r8 b e d r8 | }
		{ g,8 r8 r8 r8 g^\markup { \italic arco } bes | }
	}
	\bar "||"
	\key g \minor 
	d8( g a) bes( fis) a( ~ | a g) d ~ d bes c | d( g fis) g( ees) d( ~ | 
	d c) a ~ a fis' g | a( g fis) a( ees) ees( ~ | ees d) fis ~ fis d c | 
	ees( d g) fis( bes) a( ~ | a g) bes ~ bes g, bes | d( g a) bes( fis) a( ~ |
	a g) d ~ d d ees | f( g aes) g( d) f( ~ | f ees) c ~ c a' bes |
	c( bes a) g( fis) g( ~ | g d) bes' a g fis( ~ | fis d) ees c a c( ~ |
	c bes) d ~ d a' bes | c( bes a) g( fis) g( ~ | g d) bes' a g fis( ~ | 
	fis d) ees c( a) fis | g g'\staccato \f fis\staccato g\staccato fis\staccato g\staccato |
	\bar "||"
	\key g \major
	\repeat volta 2 {
		\bar ".|:"
		a8\staccato g\staccato d\staccato b'\staccato a\staccato g\staccato | 
		fis\staccato a\staccato gis\staccato a\staccato gis\staccato a\staccato | 
		c\staccato a\staccato d,\staccato d'\staccato c\staccato a\staccato | 
	}
	\alternative {
		{ b\staccato g\staccato fis\staccato g\staccato fis\staccato g\staccato }
		{ b b,( \p d g fis a) }
	}
	g8 g, b e d4 | a8 a( b c d e) | fis a, c e d4 | 
	g,8 \mf ^\markup { \italic pizz. } r8 b e d r8 |
	\repeat volta 2 {
		e d r8 e d r8 | a r8 c e d r8 | e d r8 e d r8 |
	}
	\alternative {
		{ g, r8 b e d r8 | }
		{ g, r8 r8 r8 g \mark \markup { \small \italic "D.S. al coda" } b \bar "||" }
	}
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	g8 \mf ^\markup { \italic pizz. } r8 b e d r8 | e d r8 e d r8 | 
	a r8 c e d r8 | e d r8 e d r8 | g, r8 b e d r8 | \break
	e d r8 e d r8 | a r8 c e d r8 | 
	d\tenuto^\markup { \italic arco } \f d\tenuto r8 e\tenuto fis\tenuto r8 | g\tenuto r8 r8 r4. |
	\bar "|."

}

acordes = \chordmode {
	\time 6/8
	s2. s2. s2. s2.
	g2. | g2. | 
	g2. | d2.:7 | d2.:7 | d2.:7 | 
	d2.:7 | g2. | g2. | g2. |
	g2.:7 | c2. | c2. | g2. | 
	d2.:7 | g2. | c2. | g2. | 
	d2.:7 | g2. | 
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
	
	g2. | d2.:7 | d2.:7 | g2. |
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
	
	g2.:m | g2.:m | g2.:m |
	d2.:7 | c2.:m | d2.:7 |
	d2.:7 | g2.:m | g2.:m |
	g2.:m | g2.:m7 | c2.:m |
	c2.:m | g2.:m | d2.:7 |
	d2.:7 | c2.:m | c2.:m |
	d2.:7 | g2. |
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
	
	g2. | d2.:7 | d2.:7 | g2. |
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
		
	g2. | g2. | 
	d2.:7 | d2.:7 | g2. | 
	g2. | d2.:7 | 
	d2.:7 | g2.
}


\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Solo" }
		<< \global \violinSolo >>
	>>
	\layout { 
		indent = 15
	}
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
>>
\layout {}
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \violinSolo \melodia }
	\midi { \tempo 4 = 100 }
}