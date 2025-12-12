\version "2.24.3"

\header {
    title = "I would that You look through my heart"
}

% Define global settings (key, time)
\global = {
    \key es \major
    \time 4/4
}

% Define the music for the Soprano/Melody line
melody = \relative c'' {
    \global
    \clef treble
    
    % Measures 1-4
    es4 g g g | as4 as g2 | f4 g g g | as4 as g2 |
    % Measures 5-8
    g4 f f f | es4 es d2 | es4 g g g | as4 as g2 |
    % Measures 9-12
    f4 g g g | as4 as g2 | g4 f f f | es4 es d2 |
    % Measures 13-16
    es4 g g g | as4 as g2 | f4 g g g | as4 as g2 |
    % Measures 17-20
    g4 f f f | es4 es d2 | es4 es es es | f4 f f2 |
    % Measures 21-24
    es4 d d d | c4 c bes2 | es4 es es es | f4 f f2 |
    % Measures 25-28
    es4 d d d | c4 c bes2 | es4 d d d | c4 c bes2 |
    % Measures 29-32
    as4 g g g | f4 f es2 | d4 d d d | es4 es bes2 |
    % Measures 33-36
    as4 g g g | f4 f es2 | d4 bes bes bes | es4 es bes2 | \bar "|."
}

% Define the English lyrics
englishLyrics = \lyricmode {
    % Verse 1
    I would that You look through my heart first -- ly see my love so that trust you may im -- part I shall prove wor -- thy of The
    love for you that o -- pens me comes here and now more true I ex -- press it truth -- ful -- ly in how I'm meet -- ing you.
    There's no way to make it be.
    
    % Verse 2
    I would that You look through my heart, to see the two of us as each o -- ther's coun -- ter -- part made for each o -- ther's trust. The
    love we're sha -- ring mu -- tu -- al -- ly can be our way a -- head, is it -- self the way.
    
    % Verse 3
    I would that You look through my heart; your en -- try -- way is free. trust you'll join me so we start to share in in -- ti -- ma -- cy; this
    love for You and me is not a place to stay, our way to -- wards the mys -- te -- ry of where we will be led.
}

% Define the piano accompaniment - Upper staff (Treble Clef)
pianoUpper = \relative c'' {
    \global
    \clef treble
    
    % M 1-4
    es4. bes8 g'4. g8 | es4 bes g'2 | f4. c8 as'4. as8 | f4 c as'2 |
    % M 5-8
    g4. d8 bes'4. bes8 | es4 bes g2 | es4. bes8 g'4. g8 | es4 bes g'2 |
    % M 9-12
    f4. c8 as'4. as8 | f4 c as'2 | g4. d8 bes'4. bes8 | es4 bes g2 |
    % M 13-16
    es4. bes8 g'4. g8 | es4 bes g'2 | f4. c8 as'4. as8 | f4 c as'2 |
    % M 17-20
    g4. d8 bes'4. bes8 | es4 bes g2 | bes'4. bes8 bes'4. bes8 | bes4 bes bes2 |
    % M 21-24
    as4. es8 f4. f8 | es4 es bes2 | bes'4. bes8 bes'4. bes8 | bes4 bes bes2 |
    % M 25-28
    as4. es8 f4. f8 | es4 es bes2 | g4. d8 bes'4. bes8 | es4 es bes2 |
    % M 29-32
    f4. c8 as'4. as8 | es4 es bes2 | d4. a8 f'4. f8 | es4 bes g2 |
    % M 33-36
    f4. c8 as'4. as8 | es4 es bes2 | d4. a8 f'4. f8 | es4 bes g2 \bar "|."
}

% Define the piano accompaniment - Lower staff (Bass Clef)
pianoLower = \relative c {
    \global
    \clef bass
    
    % M 1-4
    es4 es | es2 | bes4 bes | bes2 |
    % M 5-8
    c4 c | c2 | es4 es | es2 |
    % M 9-12
    f4 f | f2 | c4 c | c2 |
    % M 13-16
    es4 es | es2 | bes4 bes | bes2 |
    % M 17-20
    c4 c | c2 | es4 es | es2 |
    % M 21-24
    as4 as | as2 | es4 es | es2 |
    % M 25-28
    as4 as | as2 | bes4 bes | bes2 |
    % M 29-32
    bes4 bes | es2 | g4 g | es2 |
    % M 33-36
    bes4 bes | es2 | g4 g | es2 \bar "|."
}


\score {
    \new PianoStaff <<
        \new Staff = "Melody" \with {
            instrumentName = "Soprano"
            midiInstrument = "voice oohs"
        }
        <<
            \melody
        >>
        
        \new Lyrics \with { alignBelowContext = "Melody" }
        \englishLyrics
        
        \new Staff = "upper" \with {
            instrumentName = "Piano"
            midiInstrument = "acoustic grand"
        }
        <<
            \pianoUpper
        >>

        \new Staff = "lower" \with {
            instrumentName = ""
            midiInstrument = "acoustic grand"
        }
        <<
            \pianoLower
        >>
    >>

    \layout { }
    \midi { }
}
