# Useful UNIX convenience scripts 

Some written by myself, some by other people. See script files for more details. Some highlights include:

## ffmpeg media conversion scripts

Contains many simple scripts for encoding/re-muxing all files on current working directory to other format, often preferring to not lose pixels in process. 
- `wav2flac` useful for converting sample libraries etc to flac.
- `mkv2mp4` useful for converting mkv files losslessly into mp4 container eg. for OBS recordings that haven't been re-muxed (can be set in OBS advanced settings). 
- `flac2stem` folder of flac audio files to NI Traktor stem format (4 separated layers) through audio layer extraction, experimental
- ...

## `hbdir`
Handbrake batch conversion in same fashion as most ffmpeg scripts which preserves date metadatas. Might be worth developing further as Handbrake itself does not support batch conversion and does not preserve original timestamps. 

## `embed_coverart`
Tool for embedding art to mp3 files with ffmpeg, commands being annoying to remember, wip.
