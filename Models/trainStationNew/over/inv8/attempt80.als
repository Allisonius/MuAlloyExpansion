sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv8{
all te:Entry, tex:Exit | tex in te.^succs and te in ^succs.tex
}