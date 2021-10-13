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

\score {
	\relative c' {
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
	
	
	
	}
}
