\version "2.24.3"

\header {
    title = "The leaves upon a tree begun"
}

% Define global settings (key, time)
\global = {
    \key g \major
    \time 6/8
}

% Define the music (identical to the German version)
music = \relative c'' {
    \global
    \clef treble
    
    % Measures 1-4
    g8 r e | d8 r c | bes8 a g | a4 r8 |
    % Measures 5-8
    g8 r e | d8 r c | bes8 a g | d'4 r8 |
    % Measures 9-12
    c8 r g | f8 r e | d8 c bes | a4 r8 |
    % Measures 13-16
    g8 r e | d8 r c | bes8 a g | g4. \bar "||"
    
    % Measures 17-20 (Second section)
    g8 g g | f8 f f | e8 e e | d4 r8 |
    % Measures 21-24
    g8 g g | f8 f f | e8 e e | g4 r8 |
    % Measures 25-28
    c8 c c | bes8 bes bes | a8 a a | g4. |
    % Measures 29-32
    d'8 d d | c8 c c | bes8 a g | g4. \bar "|."
}

% Define the English lyrics
englishLyrics = \lyricmode {
    % Verse 1
    The leaves up -- on a tree be -- gun to dream most joy -- ous -- ly. They were not each leaf one by one, but the en -- tire tree.
    % Verses 2-5
    A -- wake they knew as they had done when dream -- ing plea -- sant -- ly. We are not each leaf one by one, we're the en -- tire tree!
    Then wind there came and in its run, raised a me -- lo -- dy; We are not each leaf one by one, we're the en -- tire tree!
    The song spilled out to ev -- ery -- one, they sang col -- lec -- tive -- ly. We are not each leaf one by one, we're the en -- tire tree!
    By day we see the shi -- ning sun, by night the ga -- la -- xy. We are not each leaf one by one, we're the en -- tire tree!
    % Verse 6
    And e -- ven more trees joined the fun a -- cross the neigh -- bor -- hood: We are not each leaf one by one, we're the en -- tire wood!
}

\score {
    \new Voice \music
    \addlyrics \englishLyrics
    
    \layout { }
    \midi { }
}
