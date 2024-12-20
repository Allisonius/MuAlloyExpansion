sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all ex:Exit | ex in Track => no ex.succs and ( (Junction in Entry.succs and ex in Junction.succs) or (ex in Entry.succs))
}