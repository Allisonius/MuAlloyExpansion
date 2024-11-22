sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t: Track| #succs.t!=1 and #succs.t!=0 and some t.succs <=> t in Junction
}