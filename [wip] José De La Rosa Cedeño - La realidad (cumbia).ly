\version "2.23.2"
\header {
	title = "La Realidad"
	subtitle = "Cumbia"
	composer = "José De La Rosa Cedeño"
	tagline = "Repositorio de música folklórica panameña - git.io/Jglgg"
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
	\key f \major
	\time 2/2
	r4 a'8 d ~ d f g4 |
	cis,8 e g bes bes, d f a | cis,4 a8 cis ~ cis e g4 | f8 e d cis d e f e |
	d4 a8 f' ~ f d a4 | e'8 g, g g bes4 d | cis4 a8 cis ~ cis e g4 |
	f8 a e g f e d cis | d f d a f d fis a | ees' d cis d a c bes a |
	g4 d'8 bes g' d bes g | bes' g d bes bes' g d bes | a4 f'8 d a f' d a |
	g'8 f e d cis bes a g | f4 d8 e f g bes a | d4 cis8 a4 g8 e4 |
	d4 a'8 d ~ d f a4 |
	d,,8 d4 d8 d d d d |
	d4 r8 a'8 d4 f | d2 r4 a4 | f8 f f a d4 cis8 a( | a) g8( g2.) |
	r8 a4 a8 cis4 d8 e( | e) cis ~ cis4 r4 g4 | bes4 bes8 bes a4 g | f2 r2 |
	r8 fis4 fis8 a4 ees'4 | d4 c2 d,8 d | fis4 ees' d d8 c( | c) bes ~ bes2. |
	}
}
