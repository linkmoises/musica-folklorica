#(define output-id "CMB19")
\version "2.24.0"
\header {
	title = "La Espina"
	subtitle = "Cumbia Atravesada"
	composer = "Abraham Vergara Cedeño (1904 - 1981)"
	arranger = "Transcripción: Ultiminio Delgado"
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

global = {
	\time 6/8
	\tempo "Allegro"
	\key d \major
}

melodia = \new Voice \relative c' {
	\partial 4 a''4 |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 4 {
		a8 d, e fis g a ~ | a d, e fis g a | b4 g8 e d cis ~ |
	}
	\alternative {
		\volta 1,3 { cis4 a a' | }
		\volta 2,4 { cis,4 \repeatTie a4 fis8 a | }
	}
	\repeat volta 4 {
		d8 d d d d fis ~ | fis fis d4 d | g fis8 e d cis ~ |
	}
	\alternative {
		\volta 1,3 { cis8 a4 r8 fis8 a | }
		\volta 2,4 { cis8 \repeatTie a4 r8 d8 d | }
	}
	\repeat volta 4 {
		d8 g, g b a a |
	}
	\alternative {
		\volta 1,3 { cis8 cis a4 d8 d | }
		\volta 2,4 { cis8 cis a4 <d a>8 <d a>8 }
	}
	\repeat volta 4 {
		d8 d d b g g |
	}
	\alternative {
		\volta 1,3 { cis4 a a8 8 | }
		\volta 2,4 { cis4 a a' | }
	}
	\mark \markup { 
		\small "Al" 
		\small \musicglyph #"scripts.segno" 
		\small "y" 
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
	% cis4, a a | %%% en la original no se entiende este fragmento, parece otra hoja superpuesta
	% r2. | r2 a'8 fis | 
	% \repeat volta 2 {
	% 	d4 b g'8 e | cis4 a a'8 fis | a8 fis d b fis' e | cis4 a a'8 fis |
	% }
	a,8 a r8 b8 d r8 | d4 r8 r4. | \break
	\bar "|."
}

acordes = \chordmode {
%% acordes de guitarra / mejorana
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
\layout { ragged-last = ##t }
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4. = 120 } %% colocar tempo numérico para que se exporte a velocidad adecuada
}