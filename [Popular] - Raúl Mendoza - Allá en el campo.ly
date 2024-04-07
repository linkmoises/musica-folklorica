\version "2.23.2"
\header {
	title = "Allá en el campo"
	subtitle = "Cumbia"
	composer = "Raúl Mendoza Marín (1972 - presente)"
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 20
	left-margin = 20
	right-margin = 20
	bottom-margin = 25
	print-page-number = false
	indent = 0
}

\markup \vspace #2 %

global= {
	\time 4/4
	\tempo "Moderato" 
	\key c \major
}

violinUno = \new Voice \relative c'' {
	r2 r8 d,8 g b |
    \repeat volta 2 {
        d8 d2 e8 d fis | d4 a4( a8) c b8. fis16 | 
        a4 g4. b8 c8. c16 | 
    }
    \alternative {
        { b4 a4. d,8 g b | }
        { b4 a2 r4 | }
    }
    \repeat volta 2 {
        g4 b8 d g fis e fis | d4 a2. |
        g4 b8 d g fis e fis | d8. e16 d8. e16 d8. e16 d4 |
        g,4 b8 d g fis e fis | d4 a2 r8 b8 |
        c4. b8 c b a g | e'2 d2 | 
    }
    \repeat volta 2 {
        g,4 r16 b16 b b d8 a r16 a16 a a | c8 g r16 g16 g g g8 b a4 |
        b4 r16 b16 b b d8 a r16 a16 a a | c8 g r16 g16 g g g8 b a4 |
    }
    \repeat volta 2 {
        g8 b16 d a8 c16 e d16 fis8 a16 c,8 e16 g | b,8 g r8 c16 e d16 fis8 a16 c,8 e16 g16 |
        b,8 g g'8 e16 c d8. a16 a8 g | g8 b16 d a8 c16 e d16 fis8 a16 c,8 e16 g |
        b,8 g r8 c16 e d16 fis8 a16 c,8 e16 g16 | b,8 g g' e16 c d8. a16 a8 g |
    }
}

\score {
	\new StaffGroup <<
		\new Staff
			<< \global \violinUno >>
			\addlyrics { %% lírica
			}
	>>
\layout { }
%%\midi { }
}
