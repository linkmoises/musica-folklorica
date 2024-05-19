\version "2.23.2"
\header {
	title = "Zapatitos de pana"
	subtitle = "Punto"
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
	\time 6/8
	\tempo 4 = 90
	\key a \major
}

melodia = \new Voice \relative c' {
	\partial 4 e'8 e |
	\repeat segno 2 {
		\repeat volta 2 {
			e8 cis e fis d fis | a cis, e a cis e, | d'8 b4 gis8 e4 |
		}
		\alternative {
			{ fis8 e4 r8 e8 e | }
			{ fis8 e4 r8 <d, e>8 fis | }
		}
		\repeat volta 2 {
			a8( d fis ~ fis) b e, | a4 e,8 a cis e | d4. r8 fis,8 e |
		}
		\alternative {
			{ cis'8 a4 ~ a8 d, fis | }
			{ cis'8 a4 r8 e''8 e | }
		}
		\break
		\repeat volta 2 { 
			b8 d4 a8 cis4 | e,8 cis e a cis e, | b'4. r8 e,8 d |
		}
		\alternative {
			{ fis8 e4 r8 e'8 e | }
			{ fis,8 e4. r4 | }
		}
		\break
		r8 e,8 e cis' e, cis' |
		\repeat volta 2 {
			b8 e, e d' e, d' |
		}
		\alternative {
			{ cis8 e, e cis' e, cis' | }
			{ cis4 <cis a'> <cis a'> | }
		}
		\repeat volta 2 {
			<b gis'>8 <b gis'>4 b'8 b4 | d, <b gis'>4 <b gis'>4 |
			<d fis>8 <d fis>4 <cis a'>8 <cis a'>4 |
		}
		\alternative { 
			{ cis4 a' a | }
			{ cis,4. r8 e,8 e | }
		}
		\repeat volta 2 {
			cis'8 a4 cis,8 a4 | d8 b d e b e | b'8 gis4 d8 b4 |
		}
		\alternative {
			{ cis8 a cis e cis e | }
			{ cis4. r8 e'8 e | }
		}
	}
	\bar "||"
	e4.\fermata r8 a8 a | a4.\fermata r8 r4 |
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
	\midi { \tempo 4 = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}