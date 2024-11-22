module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv8[] {
(all e: (one Entry),ex: (one Exit) {
(some t: (one Track) {
((t !in (e.succs)) && (ex in (t.(^succs))))
})
})
}





