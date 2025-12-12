\version "2.24.3"

\header {
    title = "Ich will dass Du mein Herz durchschaust"
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

% Define the lyrics
lyrics = \lyricmode {
    % Verse 1
    Ich will dass Du mein Herz durch -- schaust, erst Lie -- be siehst Du da -- rin. Und als
    das dass wenn Du mir ver -- traust ich des -- sen wür -- dig bin. Die
    Lie -- be die mich öff -- net dir ge -- winnt, ge -- deiht und glückt, siehst
    Du sie durch was mit mir be -- geg -- net aus -- ge -- drückt. kei -- nen Weg gibt es zu ihr, denn
    dem was sie he -- rauf -- be -- schwört, wo un -- ser Weg hin -- geht.
    
    % Verse 2
    Ich will dass Du mein Herz durch -- schaust, uns bei -- de so er -- kennst. Die
    Ge -- gen -- stück -- ke, gern ge -- naust ver -- traut, ver -- eint, er -- gänzt. Die
    Lie -- be, die von Dir und mir bleibt nir -- gends hin -- ter -- legt und
    sie ist selbst der Weg.
    
    % Verse 3
    Ich will dass Du mein Herz durch -- schaust, tritt ein, der Weg ist frei. Die
    trau -- lich wir als Team durch -- aus -- in -- tim Ge -- mein -- sam -- keit; Die
    Lie -- be, die zu uns ge -- hört, führt zu was vor uns steht, zu
}

% Define the piano accompaniment - Upper staff (Treble Clef)
pianoUpper = \relative c'' {
    \global
    \clef treble
    
    % The piano part uses chords/arpeggios. Simplifying to block chords based on typical hymn style.
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
            instrumentName = "Melodie"
            midiInstrument = "voice oohs"
        }
        <<
            \melody
        >>
        
        \new Lyrics \with { alignBelowContext = "Melody" }
        \lyrics
        
        \new Staff = "upper" \with {
            instrumentName = "Klavier"
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
