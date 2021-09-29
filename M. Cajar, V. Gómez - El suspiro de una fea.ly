\version "2.23.2"
\header {
	title = "El suspiro de una fea"
	subtitle = "Pasillo"
	poet = "Letra: Mario H. Cajar"
	composer = "Música: Vicente Gómez Gudiño"
	tagline = "Colección de música típica panameña"
}

\paper {
	#(set-paper-size "letter")
	top-margin = 15
	left-margin = 15
	right-margin = 15
	bottom-margin = 20
}

\score {
	\relative c' {
	\key d \major
	\time 3/4
	\set Timing.beamExceptions = #'()
	r8 fis'8 cis d fis b | a fis d b a fis | d fis a d fis e | g2 r4 |
	a,8 a e'4 d8 b | cis a cis e d b | cis a b4 g8 b | a4 fis r4 | 
	r8 fis'8 cis d fis b | a fis d b a fis | d fis a d fis e | g2 r4 |
	r4 b4 a8 g | fis a, a'4 g8 fis | e a, g'4 fis8 e | d2 r4 |
	\bar ":|.|:"
	r8 a8 a a a a | 
	}
}
