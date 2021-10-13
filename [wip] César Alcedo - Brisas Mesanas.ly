\version "2.23.2"
\header {
	title = "Brisas Mesanas"
	subtitle = "Pasillo"
	composer = "César Alcedo Alvarado (1890 - 1931)"
	tagline = "M. Serrano Samudio | Repositorio de música folklórica panameña | CC-BY | git.io/Jglgg"
}

\paper {
	#(set-paper-size "letter")
	top-margin = 20
	left-margin = 15
	right-margin = 15
	bottom-margin = 20
}

\markup \vspace #2 %% usar #2. Si se tiene el tempo de la pieza se elimina esta línea

melody = \relative c' {
	\key c \major
	\time 3/4
	\set Timing.beamExceptions = #'()
	r8 e8( dis e) a c |
	\repeat volta 2 {
	e2.( | e4) b4. d8 | c2. | r8 g8( fis g) c e |
	g4. fis8( g fis) | g4 d dis | e2.( | e4) b d |
	c4 c8( d e4) | r4 b4 d | c4 c8( d e4)( | e4) e a |
	gis8 b4 gis8 b4 | fis8 b4 fis8 b4 | e,4. e8 e4 |
	}
	\alternative {
		{ r8 e,8( dis e) a c | }
		{ r8 e8 f4. e8 | }
	}
	\repeat volta 2 {
	e8( d) d c b4 | r8 d8 e4. d8 | d8( c) c b a4 | r8 a8 c4 a4 |
	f8( a c) f,( a c) | 
	}
	\alternative {
		{ e,8( gis8 b8) e,8( gis8 b8) | a8( gis) a b c d | }
		{ e,8 gis b e b c | }
	}
	a2. | r8 e8( dis e) a d | e2.( | e4) b4. d8 | 
	c2. | r8 g8( fis g) c e | g4. fis8( g) fis | g4 d dis | 
	e2.( | e4) b d | c4 c8( d e4) | r4 b4 d |
	c4 c8( d e4)( | e4) e a | gis8 b4 gis8 b4 | fis8 b4 fis8 b4 | 
	e,4. e8 e4 |
	\repeat volta 2 {
	\key a \major
	r8 fis8 e4 d | cis4 e,8 a cis4( | cis8) b a4 gis | fis4 fis8 b8 d4 |
	r8 cis8 b4 a | gis4 d8 e gis4( | gis8) fis8 e4 d | cis8 cis4 fis8 e4 |
	r8 fis'8 e4 d | cis4 e,8 a cis4( | cis8) b a4 gis | fis4 fis8 b d4 |
	r8 d8 e4. fis8 | e4 fis4. e8 | d4 cis4. b8 |
	}
	\alternative {
		{ a2. | }
		{ a4 cis e | }
	}
	a8 r8 r4 r4 |
	\bar "|."
}


harmonies = \chordmode {
	\time 3/4
	s2. |
	a2.:m | e2. | a2.:m | a2.:m |
	c2. | g2. | c2. | e2. |
	a2.:m | e2. | a2.:m | a2.:m | 
	b2.:7 | b2.:7 | e2. |
	e2. | e2. | e2. | e2. |
	a2.:m | a2.:m | f2. | e2. |
	a2.:m | a2.:m | e2. | e2. |
	a2.:m | a2.:m | f2. 
}


\score {
	<<
	\language "espanol"
	\new ChordNames {
		\set chordChanges = ##t
		\harmonies
	}
	\new Voice = "one" { \melody }
	>>
\layout {}
}
