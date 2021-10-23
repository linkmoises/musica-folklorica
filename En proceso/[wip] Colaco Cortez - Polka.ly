\version "2.23.2"
\header {
	title = "Polka"
	subtitle = "Polka"
	composer = "Braulio Escolástico 'Colaco' Cortez (1904 - 1986)"
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
	\key g \major
	\time 2/4
	\partial 8 d'16 d |
	b8 d g b | a c r8 c16 a | fis8 d fis e | d4 r8 d16 d |
	}
}
