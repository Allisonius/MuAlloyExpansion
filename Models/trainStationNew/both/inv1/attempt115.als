sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all ex: Exit, ent: Entry | one t: Track | ex in t.succs and ent in t.succs
}