\version "2.23.2"
\header {
	title = %%
	subtitle = %%
	composer = %%
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 20
	left-margin = 20
	right-margin = 20
	bottom-margin = 25
	print-page-number = false
}

\markup \vspace #2 %% usar #2. Si se tiene el tempo de la pieza se elimina esta línea

global= {
	\time %%
	\tempo %%
	\key %%
}

violinUno = \new Voice \relative c' {
%% melodía
}

harmonies = \chordmode {
%% acordes de guitarra / mejorana
}


\score {
<<
	\language "espanol"
	\new ChordNames {
		\set chordChanges = ##t
		\set noChordSymbol = ##f
		\override ChordName.font-size = #0.9
		\override ChordName.direction = #UP
		\harmonies
	}
	\new Staff
		<< \global \violinUno >>
		\addlyrics { %% lírica
		a - la 
		}
>>
\layout {}
%%\midi {}
}
