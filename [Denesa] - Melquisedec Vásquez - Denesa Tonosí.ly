#(define output-id "DEN01")
\version "2.24.0"
\header {
	title = "Denesa Tonosí"
	subtitle = "Denesa"
	composer = "Melquisedec Vásquez"
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

\markup \vspace #2

global= {
	\time 2/4
	\tempo "Andantino"
	\key f \major
}

melodia = \new Voice \relative c' {
	f8 a16 c f e d c | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 4 {
		e16 c8 g16 bes16 d bes g |
	}
	\alternative {
		{ f16 f a c f e d c | }
		{ f,8 a16 c f e d c | } %% la parte f e d c es una suposición %%
	}
	\repeat volta 3 {
		e16 g f e d f e d | c4 bes16 d c bes | a c bes a g bes a g |
	}
	\alternative {
		{ f8. c'16 f a g f | }
		{ f,8 r8 r8 f16 f | } %% la parte f16 f es una suposición %%
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
        \bar "||"
	f8 a16 c f e d c |
	\repeat volta 8 {
		e16 c8 g16 bes d bes g | 
	}
	\alternative {
		{ f8 a16 c f e d c | } %% la parte f e d c es una suposición %%
		{ f,8 a16 c f a g f | }
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
		{ \break f,8 a16 c f e d c | } %% la parte f e d c es una suposición %%
	}
	e8 c4. | c8 c d e | f8 r8 r4 |
	\bar "|."
}

acordes = \chordmode {
	\time 2/4
	s2
	c2:7 | f2 | f2 |
	c4 bes4 | c4 bes4 | f4 c4:7 |
	f2 | f2 | c2:7 |
	f2 | f2 | c2:7 |
	f2 | c2:7 | f2 |
	f2 | c2:7 | f2 | f2 |
	s2 | s2 |
	f2 | c2:7 | f2 |
	f2 | c2:7 | c2:7 |
	f2
}

lirica = \lyricmode {
%% letra
}

\score { %% genera el PDF
<<
	\language "espanol"
	\new ChordNames {
		\set chordChanges = ##t
		\set noChordSymbol = ##f
		\override ChordName.font-size = #-0.9
		\override ChordName.direction = #UP
		\acordes
	}
	\new Staff
		<< \global \melodia >>
	\addlyrics \lirica
	\override Lyrics.LyricText.font-size = #-0.5
>>
\layout {}
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4 = 80 } %% colocar tempo numérico para que se exporte a velocidad adecuada
}
