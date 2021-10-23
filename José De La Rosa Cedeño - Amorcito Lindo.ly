\version "2.23.2"
\header {
	title = "Amorcito Lindo"
	subtitle = "Danzón Cumbia"
	composer = "José De La Rosa Cedeño (1907 - 1990)"
	tagline = "M. Serrano Samudio | Repositorio de música folklórica panameña | CC-BY | git.io/Jglgg"
}

\paper {
	#(set-paper-size "letter")
	top-margin = 20
	left-margin = 15
	right-margin = 15
	bottom-margin = 20
}

\markup \vspace #2

\score {
	\relative c' {
	\key c \major
	\time 4/4
	r4 a'8 c4 e8 b4 |
	\repeat volta 2 {
		b'4 a8 g f e d c | a'4 g8 f e d c b | e4. d8 c e b d | 
		a4 e8 a c b d c | e d c b e d c b | e c a c e a c4 |
		b4 a8 g f a g f |
	}
	\alternative {
		{ e4 a,8 c4 e8 b4 | }
		{ e4 r8 e8 e e e4 | }
	}
	r4 a,8 a e a c b | a4 a8 c4 e8 a4 | g2 f2 | e4 d c b8 d( |
	d) a r4 r8 a8 c e | a,2 r8 g8 b d | g,2 r8 e'8 f d | e4. b8 c d e f |
	e2 r8 e8 f d |
	\repeat volta 2 {
		e4 c'8 b( b) a e4 | d4 b r8 e8 f d | e4 b'8 gis4 e8 b4 |
		f'4 a, r8 e'8 f d | e4 c'8 b4 a8 e4 | g f r8 b,8 c d |
		f4 e8 d4 c8 b4 |
	}
	\alternative {
		{ a2 r8 e'8 f d | }
		{ a4 r4 r4 a8 a8 | }
	}
	a4 a8 a c e b d |
	\repeat volta 2 {
		f4 e r4 b8 d | f4 a,8 a c e g d | f4 e r4 b8 d |
	}
	\alternative {
		{ f4 a,8 a c e b d | }
		{ f4 a, c8 e g c | }
	}
	\repeat volta 2 {
		f,2 d8 f a c | e,2 c8 e g b | d,4 f d b8 a( 
	}
	\alternative {
		{ a2) c8 e g c | }
		{ a,2 c4 e | }
	}
	a4. f8 d4 f8 a( | a4.) e8( e4) c8 e( | e8) d4 f d8 b4 |
	a2 c4 e | a4. f8 d4 f8 a( | a4.) e8( e4) c8 e( | e8) d4 f d8 b4 | 
	a4 r4 r4 a8 a | a4 a8 a c e b d | 
	\repeat volta 4 {
		f4 e r4 b8 d | f4 a,8 a c e g d | f4 e r4 b8 d |
		f4 a,8 a c e b d | f4 e r4 b8 d | f4 a,8 a c e b d |
		f,4 e r4 b'8 d |
	}
	\alternative {
		{ f4 a,8 a c e g d | }
		{ f4 a,8 a c e b d | }
	}
	f4 e r4 b8 d | f4 a,8 a c e g d | f4 e r4 b8 d | f4 a, r8 e8 gis b |
	e4 e r4 e4 | <a, c e a>4 r4 r2 |
	\bar "|."
	}
}
