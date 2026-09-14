#(define output-id "PAS07")
\version "2.24.0"
\header {
	title = "Recuerdos de Josefa"
	subtitle = "Pasillo"
	composer = "Artemio De Jesús Córdova (1896 - 1988)"
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
	\time 3/4
	\tempo "Adagio"
	\key g \minor
}

melodia = \new Voice \relative c' {
	\set Timing.beamExceptions = #'() %% fragmenta en grupos de corchea
	\repeat volta 2 {
		r8 g'8 bes4. d8 | g2. | r8 bes8 a4. fis8 | g2. ~ |
		g8 bes a4. g8 | fis2. ~ | fis8 c8 bes4. a8 | g'2. |
		d,4 fis4. a8 | a'4. g8 fis4 ~ | fis8 ees( d c bes a) | c4. b8 bes4 ~ | 
		bes8 g bes4. d8 | g2. ~ | g8 g( fis g aes g) | f4. ees8 c4 | 
		r8 fis8( g a bes c) | c( a fis d c a) | fis d fis( a c d) | g,4 r8 g'8 _\markup { \normalsize \italic "Al Coda" } g4  |
	}
	\repeat volta 2 {
		r8 g,8 bes4. d8 | r8 g8 g g g g | g8 bes d, g bes, d | a4 r8 fis'8 fis4 |
		r8 d,8 fis4. a8 | r8 fis'8 fis fis fis fis | fis a fis d c a | g4 r8 g'8 g4 |
		r8 g,8 bes4. d8 | r8 g8 g g g g | g4. ees8 c4 | r8 a'8 a a a a | 
		a4. fis8 d4 | r8 d8 cis d a' fis | a4 _\markup { \normalsize \italic "D.C. al Coda" } g2 | \break
	}
	\repeat volta 2 {
		\mark \markup { 
			\normalsize \musicglyph #"scripts.coda" 
			\small \italic "Trio" 
		}
		bes4 a4. g8 | fis4. d8 bes4 ~ | bes8 bes8 a4 g | f4. ees8 a,4 |
		c''4. bes8 g4 | a2 r4 | a8 g f ees d c | bes2 r4 | 
		bes'4 a4. g8 | fis2( a4) | c4 bes4. fis8 | g2 r4 |
		bes4 g4. d8 | f4. ees8 c4 | r8 ees8 c a fis d' |
	}
	\alternative {
		{ g4 r8 g8 g4 | }
		{ g,4 d8 g bes d | }
	}
	g4 r4 r4 |
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
	\midi { \tempo 2. = 50 }
}