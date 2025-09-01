// this Chuck code loads a sound file, changes its pitch by semitone. Then play.

// prepare buffer to load and play back sound files.
SndBuf sbuf => dac; // Connect the sound buffer to speaker

// load your sound file from your local current folder to the buffer.
"A4.wav" => sbuf.read;

// Start playing from beginning
0 => sbuf.pos;
sbuf.length() => now;

// calculate pitch shift by semitone.
// for example: increase half a semitone is 2^(0.5/12).
 Math.pow(2.0, 0.2/12.0) => float semitoneUpRatio  ;

// change speed and pitch.
sbuf.rate(semitoneUpRatio);

// play the changed sound
0 => sbuf.pos;
sbuf.length() => now;

// prompt at end of playing.
<<< "Completed playing " >>>;