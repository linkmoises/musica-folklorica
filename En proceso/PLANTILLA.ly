\version "2.23.2"
\header {
	title = " "
	subtitle = " " %% colocar el género al cual pertenece la pieza
	poet = " " %% colocar el nombre del autor de la letra completo y año de nacimento y fallecimiento
	composer = " " %% colocar nombre completo del compositor y año de nacimiento y fallecimiento.
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
	}
}
