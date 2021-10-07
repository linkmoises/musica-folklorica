\version "2.23.2"
\header {
	title = "Amorcito Lindo"
	subtitle = "Cumbia"
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
	b4 a8 g f e d c
	}
}
