\version "2.23.2"
\header {
	title = "Santa Librada"
	subtitle = "Punto"
	composer = "Edgardo Quintero"
	tagline = "M. Serrano Samudio | Repositorio de música folklórica panameña | CC-BY | git.io/Jglgg"
}

\paper {
	#(set-paper-size "letter")
	top-margin = 15
	left-margin = 15
	right-margin = 15
	bottom-margin = 20
}

\markup \vspace #2 %

melody = \relative c' {
	\key g \major
	\time 6/8
	<b' g'>2.:32 \fermata
	s2. | s2. | s2.
	\bar "||"
	r4. r8  g8 b \bar "||" | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	d cis d e d g ~ | g d b ~ b d d |
	d e d g, b d ~ | d c a ~ a fis a | c b c d c a' ~ | a fis d ~ d a' gis |
	a fis d e d c ~ | c b d ~ d g, b | d cis d e d g ~ | g d b ~ b f' f |
	f e dis e b d ~ | d c a ~ a e' e | e a g fis e g ~ | g d b' g d c ~ |
	c a a' fis d b | b g4 r8 e'8 e | e a g fis e g ~ | g d b' g d c ~ |
	c a a' fis d b | r8 g' fis g fis g |
	\repeat volta 2 {
		a g d b' a g | fis a gis a gis a | c a d d c a |
	}
	\alternative {
		{ b g fis g fis g | }
		{ b b, d g fis a | }
	}
	\bar "||"
	g g, b e d4 | a8 a b c d e | fis a, c e d4 | 
	g,8^\markup { \italic pizz. } r8 b e d r8 |
	\repeat volta 2 {
		e8 d r8 e d r8 | a8 r8 c e d r8 | e8 d r8 e d r8 |
		\mark \markup { \small \musicglyph #"scripts.coda" }
	}
	\alternative {
		{ g,8 r8 b e d r8 | }
		{ g,8 r8 r8 r8 g^\markup { \italic arco } bes | }
	}
	\bar "||"
	\key g \minor 
	d8 g a bes fis a ~ | a g d ~ d bes c | d g fis g ees d ~ | 
	d c a ~ a fis' g | a g fis a ees ees ~ | ees d fis ~ fis d c | 
	ees d g fis bes a ~ | a g bes ~ bes g, bes | d g a bes fis a ~ |
	a g d ~ d d ees | f g aes g d f ~ | f ees c ~ c a' bes |
	c bes a g fis g ~ | g d bes' a g fis ~ | fis d ees c a c ~ |
	c bes d ~ d a' bes | c bes a g fis g ~ | g d bes' a g fis ~ | 
	fis d ees c a fis | g g' fis g fis g |
	\bar "||"
	\key g \major
	\repeat volta 2 {
		\bar ".|:"
		a8 g d b' a g | fis a gis a gis a | c a d, d' c a | 
	}
	\alternative {
		{ b g fis g fis g }
		{ b b, d g fis a }
	}
	g8 g, b e d4 | a8 a b c d e | fis a, c e d4 | 
	g,8^\markup { \italic pizz. } r8 b e d r8 |
	\repeat volta 2 {
		e d r8 e d r8 | a r8 c e d r8 | e d r8 e d r8 |
	}
	\alternative {
		{ g, r8 b e d r8 | }
		{ g, r8 r8 r8 g b | \bar "||" }
	}
	\mark \markup { \small \musicglyph #"scripts.segno" }
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
	g8^\markup { \italic pizz. } r8 b e d r8 | e d r8 e d r8 | 
	a r8 c e d r8 | e d r8 e d r8 | g, r8 b e d r8 | \break
	e d r8 e d r8 | a r8 c e d r8 | 
	d^\markup { \italic arco } d r8 e fis r8 | g r8 r8 r4. |
        \bar "|."
        \cadenzaOn
                \stopStaff
                        \repeat unfold 1 {
                                s1
                                \bar ""
                        }
                \startStaff
        \cadenzaOff
}

harmonies = \chordmode {
	\time 6/8
	s2. s2. s2. s2. s2.
	g2. | g2. | 
	g2. | d2.:7 | d2.:7 | d2.:7 | 
	d2.:7 | g2. | g2. | g2. |
	g2.:7 | c2. | c2. | g2. | 
	d2.:7 | g2. | c2. | g2. | 
	d2.:7 | g2. | 
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
	
	g2. | d2.:7 | d2.:7 | g2. |
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
	
	g2.:m | g2.:m | g2.:m |
	d2.:7 | c2.:m | d2.:7 |
	d2.:7 | g2.:m | g2.:m |
	g2.:m | g2.:m7 | c2.:m |
	c2.:m | g2.:m | d2.:7 |
	d2.:7 | c2.:m | c2.:m |
	d2.:7 | g2. |
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
	
	g2. | d2.:7 | d2.:7 | g2. |
	
	g2. | d2.:7 | d2.:7 |
	
	g2. |
	g2. |
	
	s8 s8 %% este hack es para que la comprobación de tiempo no marque errores 
	
	g2. | g2. | g2. | 
	d2.:7 | d2.:7 | g2. | 
	g2. | d2.:7 | 
	d2.:7 | g2.
}

\score {
	<<
	\language "espanol"
	\new ChordNames {
		\set chordChanges = ##t
		\harmonies
	}
	\new Staff {
		\melody
	}
	>>
\layout {}
}
