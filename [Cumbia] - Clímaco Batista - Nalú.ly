\version "2.23.2"
\header {
	title = "Nalú"
	subtitle = "Cumbia Zapateada"
	composer = "Clímaco Batista Díaz (1907 - 1978)"
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
	\time 2/2
	\tempo "Allegro"
	\key d \major
}

melodia = \new Voice \relative c' {
	\repeat segno 2 {
		\repeat volta 2 {
			a'4 d8 fis e2 | a,4 d8 fis e2 | a,4 d8 fis e2 
		}
		\alternative {
			{ a,4 d8 fis e2 | }
			{ g4 e a d,8 fis | \break }
		}
		e4 cis a2 |
		\repeat volta 2 {
			g'4 e a d,8 fis | 
		}
		\alternative {
			{ e4 cis a2 | }
			{ e'4 cis a2 | }
		}
		g4 g e e \break | cis' cis a2 | g4 g e e | cis' cis a d8 d |
		\repeat volta 2 {
			d4 g,8 b a4 a \break | cis cis a d8 d | d4 g,8 b a4 a |
		}
		\alternative {
			{ cis4 cis a d8 d | }
			{ cis4 cis a\fermata r4 | } 
		}
		\time 2/4 
		r8 fis'16 fis fis8 e16 g \break | b2 ~ | b4. cis,16 cis | cis4. a16 d |
		b2 ~ | b8 fis'16 fis fis8 e16 g | 
		\repeat volta 2 {
			b2 ~ | b4. cis,16 cis \break | cis4. fis,16 d' |
		}
		\alternative {
			{ b2 ~ | b8 fis'16 fis fis8 e16 g | }
			{ b,2 | }
		}
	}
	\bar "||"
	a8 a b cis | d4. d16 d | d4 r4 |
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
\layout {}
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4 = 120 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}