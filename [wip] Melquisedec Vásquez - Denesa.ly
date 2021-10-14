\version "2.23.2"
\header {
	title = "Denesa Tonosí"
	subtitle = "Denesa"
	composer = "Melquisedec Vásquez"
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
	\time 2/4
	\key f \major
	f8 a16 c f e d c | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 4 {
		e16 c8 g16 bes16 d bes g |
	}
	\alternative {
		{ f16 f a c f e d c | }
		{ f,8 a16 c r4 | } %% silencio no f e d c? %%
	}
	\repeat volta 3 {
		e16 g f e d f e d | c4 bes16 d c bes | a c bes a g bes a g |
	}
	\alternative {
		{ f8. c'16 f a g f | }
		{ f,8 r8 r4 | } %% silencios no van
	}
	\repeat volta 4 {
		e8 g16 bes d8 bes16 g |
	}
	\alternative {
		{ f8 r8 f4 | }
		{ f8 a16 c f8 c16 a | }
	}
	g8 bes16 c e8 c16 a | f8 a16 c f8 c16 a | g8 bes16 c e8 c16 a |
	f4 r8 f16 f |
        \mark \markup { \small \musicglyph #"scripts.coda" }
	f8 a16 c f e d c |
	\repeat volta 7 {
		e16 c8 g16 bes d bes g | 
	}
	\alternative {
		{ f8 a16 c r4 | } %% silencio no
		{ f,8 a16 c f a g g | }
	}
	\mark \markup { 
		\small "Al" 
		\small \musicglyph #"scripts.segno" 
		\small "2 veces y" 
		\small \musicglyph #"scripts.coda" 
	}
        \bar "||"
        \cadenzaOn
                \stopStaff
                        \repeat unfold 1 {
                                s1
                                \bar ""
                        }
                \startStaff
        \cadenzaOff
        \break
        
	\mark \markup { \small \musicglyph #"scripts.coda" }
	f,8 a16 c f e d c | 
	\repeat volta 11 {
		e16 c8 g16 bes d bes g |
	}
	\alternative {
		{ f8 a16 c f e d c | }
		{ f,8 a16 c r4 | } %% silencio no %%
	}
	e8 c4. | c8 c d e | f8 r8 r4 |
	\bar "|."
	
	}
}
