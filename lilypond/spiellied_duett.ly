\version "2.24.3"

\header {
    title = "Ich möchte gern ein Spiel-Lied sing'n"
    composer = ""
    tagline = ""
}

% Define global settings (key, time)
\global = {
    \key g \major
    \time 4/4
    \clef treble
}

% Define the music
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

% Define the German lyrics with quotation marks for alternating parts
germanLyrics = \lyricmode {
    % Verse 1
    "Ich" möch -- te gern ein Spiel -- Lied sing'n. "Ein Spiel -- Lied sing ich auch." "Zu -- sam -- men kann ein Spiel ge -- ling'n, das bei -- de Stim -- men braucht!"
    % Verse 2
    "Mit bei -- den Mün -- dern sin -- gen wir." "Und un -- se -- ren vier Ohr'n!" "Die un -- se -- re vier Au -- gen hier: Wir sind aus Spiel'n ge -- bor'n!"
    % Verse 3
    "Der Was -- ser -- stoff vom Ur -- knall kam." "Der Sau -- er -- stoff von Stern'n." "Ihr Zu -- sam -- men -- spiel hier nahm die Form von Was -- ser gern!"
    % Verse 4
    "Was spielt ein Was -- ser -- mo -- le -- kül?" "Es spielt ganz viel Che -- mie." "Ver -- eint in Zel -- len wächst ein Spiel, ge -- nannt Bi -- o -- lo -- gie!"
    % Verse 5
    "Und Zel -- len spie -- len noch viel mehr." "Das Le -- ben, wild und viel." "Die Pracht des Le -- bens um uns her ist so her -- bei -- ge -- spielt!"
}

\score {
    \new Voice \music
    \addlyrics \germanLyrics
    
    \layout { }
    \midi { }
}
