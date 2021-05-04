\version "2.23.2"
\header {
	title = "Santa Librada"
	subtitle = "Punto"
	composer = "Edgardo Quintero"
	tagline = "Colección de música típica panameña"
}

\paper {
	#(set-paper-size "letter")
	top-margin = 15
	left-margin = 15
	right-margin = 15
}

\score {
	\relative c' {
	\key g \major
	\time 6/8
	r4. r8  g'8 b \bar "||" | d cis d e d g ~ | g d b ~ b d d |
	d e d g, b d ~ | d c a ~ a fis a | c b c d c a' ~ | a fis d ~ d a' gis |
	a fis d e d c ~ | c b d ~ d g, b | d cis d e d g ~ | g d b ~ b f' f |
	f e dis e b d ~ | d c a ~ a e' e | e a g fis e g ~ | g d b' g d c ~ |
	}
}
