\version "2.23.2"
\header {
	title = "Lucy"
	subtitle = "Cumbia"
	composer = "Dagoberto Yin Carrizo (1939 - presente)"
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
	\tempo "Andante"
	\key ees \major
}

melodia = \new Voice \relative c' {
	\partial 2 r8 ees'8 ees d |
	\repeat volta 2 {
		c4 bes8 g ~ g aes bes c ~ | c bes ~ bes4 r8 ees8 ees d | c4 bes8 d ~ d d c d ~ | 
		d2 r8 d8 d c | bes4 aes8 f ~ f g aes bes ~ | bes bes ~ bes bes d4 g8 bes, ~ |
		bes bes ~ bes aes c4 bes8 g ~ |
	}
	\alternative {
		{ g2 r8 ees'8 ees d | }
		{ g,2 r8 bes8 bes g | }
	}
	\repeat volta 2 {
		ees4 f g aes8 bes ~ | bes g ~ g4 r8 bes8 bes g | ees4 ees8 f ~ f g ~ g aes |
		f4. r8 r8 aes8 aes g | f4 g aes bes8 d ~ | d d ~ d r8 r8 bes bes bes |
		bes4 bes8 c ~ c aes ~ aes bes | 
	}
	\alternative {
		{ g4. r8 r8 bes8 bes bes | \break }
		{ g2 r2 \mark \markup { \small \italic "D.C." } | \bar "||" }
	}
	r8 bes4 bes bes bes8 | aes4 g2. | r8 c4 c c bes8 |
	aes2. r4 | \break r8 aes4 aes aes g8 | g4 f2. |
	r8 bes4 bes bes aes8 g2. r4 |
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