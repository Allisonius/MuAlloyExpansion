sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all track : Track | all junction : Junction | junction not in track.succs implies all signal : Semaphore | signal not in track.^signals
}