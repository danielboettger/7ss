\version "2.24.3"

\header {
    title = "Game Song (duet version)"
    composer = ""
    tagline = ""
}

% Define global settings (key, time)
\global = {
    \key g \major
    \time 4/4
    \clef treble
}

% Define the music (identical to the German version)
music = \relative c'' {
    \global
    
    % Measures 1-4
    g4 a b c | b a g2 | g4 a b c | b a g2 |
    % Measures 5-8
    g4 a b c | b a g2 | d'4 e f g | f e d2 | \bar "||"
    
    % Measures 9-12
    g4 a b c | b a g2 | g4 a b c | b a g2 |
    % Measures 13-16
    g4 a b c | b a g2 | d'4 e f g | g4. r4 | \bar "|."
}

% Define the English lyrics with quotation marks for alternating parts
englishLyrics = \lyricmode {
    % Verse 1
    "I" want to sing a game song now. "I want to sing a -- long." "To -- play to -- ge -- ther will al -- low a both your voi -- ces song!"
    % Verse 2
    "With both our mouths we vo -- ca -- lize." "With our four ears we hear." "And know and see with our four eyes: that games have brought us here!"
    % Verse 3
    "There's hy -- dro -- gen from the Big Bang..." "There's o -- xy -- gen from stars..." "That tra -- vel -- ed here from way back then to wa -- ter such as ours!"
    % Verse 4
    "More games of wa -- ter mo -- le -- cules?" "A lot of che -- mis -- try." "Com -- bin -- ed in cells they play by rules we call bi -- o -- lo -- gy!"
    % Verse 5
    "And games of cells are more im -- mense." "All life -- forms they have made." "All life in its mag -- ni -- fi -- cence is here be -- cause it's played!"
}

\score {
    \new Voice \music
    \addlyrics \englishLyrics
    
    \layout { }
    \midi { }
}
