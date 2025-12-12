\version "2.24.3"

\header {
    title = "Am Baum die Blätter schliefen ein"
    composer = ""
    tagline = ""
}

% Define global settings (key, time)
\global = {
    \key g \major
    \time 6/8
}

% Define the music
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

% Define the German lyrics
germanLyrics = \lyricmode {
    % Verse 1
    Am Baum die Blät -- ter schlie -- fen ein in ih -- rem Liebs -- lings -- traum. Sie war'n nicht je -- des Blatt al -- lein, sie war'n der gan -- ze Baum.
    % Verses 2-5
    Er wacht fiel ih -- nen wie -- der ein ihr wun -- der -- schö -- ner Traum. Wir sind nicht je -- des Blatt al -- lein, wir sind der gan -- ze Baum!
    Der Wind gab Me -- lo -- die hi -- nein, ein Lied er -- füllt den Raum. Wir sind nicht je -- des Blatt al -- lein, wir sind der gan -- ze Baum!
    Da san -- gen al -- le all -- ge -- mein am gan -- zen Lie -- der -- baum. Wir sind nicht je -- des Blatt al -- lein, wir sind der gan -- ze Baum!
    Wir sehn bei Tag den Son -- nen -- schein, bei Nacht den Wel -- ten -- raum. Wir sind nicht je -- des Blatt al -- lein, wir sind der gan -- ze Baum!
    % Verse 6
    Und noch mehr Bäu -- me stimm -- ten ein und al -- le san -- gen bald: Wir sind nicht je -- des Blatt al -- lein, wir sind der gan -- ze Wald!
}

\score {
    \new Voice \music
    \addlyrics \germanLyrics
    
    \layout { }
    \midi { }
}
