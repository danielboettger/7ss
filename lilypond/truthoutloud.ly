\version "2.24.3"

\header {
    title = "The truth we sing out loud"
    composer = "" % Add composer if known
    tagline = "" % Remove the default tagline
}

% Define the music for the upper staff (melody)
musicUpper = \relative c' {
    \clef treble
    \key g \major
    \time 4/4
    \global \dynamic_settings

    % Measure 1-4
    r8 d4 e8 | g4. g8 | f4 e | d2 |
    % Measure 5-8
    r8 g4 a8 | b4. b8 | a4 g | f#2 |
    % Measure 9-12
    \override LyricHyphen.minimum-length = #1.0
    g4. a8 | b4 a | g2 \staccato r4 | b4. b8 |
    % Measure 13-16
    \override LyricHyphen.minimum-length = #0.5
    a4 g | f#2. | r4 |
}

% Define the music for the lower staff (bass)
musicLower = \relative c {
    \clef bass
    \key g \major
    \time 4/4

    % Measure 1-4
    g4 g' | d4 d' | c4 c' | g2 |
    % Measure 5-8
    c4 c' | g4 g' | d4 d' | g2 |
    % Measure 9-12
    c4 c' | g4 g' | d2 r4 | g4 g' |
    % Measure 13-16
    d4 d' | g2. | r4 \bar "|."
}

% Define the English lyrics
englishLyrics = \lyricmode {
    % Verse 1
    From ev -- ery mouth to ev -- ery ear re -- sounds our song a -- bout, the truth as it ap -- pears now here. The
    % Verse 2
    U -- nan -- i -- mous -- ly, for loud and clear, our voi -- ces have a -- lowed the words we're sing -- ing to ap -- pear. The
    % Verse 3
    In u -- ni -- son, and all to hear, in com -- mon song rings out, with truth im -- por -- tant and most dear. The
    % Verse 4
    U -- ni -- ted, strong and free from fear, in har -- mo -- ny and proud, and loud -- ly since we all co -- here. The
    % Final Line
    truth we sing out loud.
}

% Combine into the score
\score {
    \new PianoStaff <<
        \new Staff = "upper" \with {
            instrumentName = "Piano"
            midiInstrument = "acoustic grand"
        }
        \musicUpper

        \new Lyrics \with { alignBelowContext = "upper" }
        \englishLyrics

        \new Staff = "lower" \with {
            instrumentName = ""
            midiInstrument = "acoustic grand"
        }
        \musicLower
    >>

    \layout { }
    \midi { }
}
