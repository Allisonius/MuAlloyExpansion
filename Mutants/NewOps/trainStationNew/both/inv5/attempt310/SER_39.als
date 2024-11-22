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
pred inv5[] {
(all t: (one Track),t2: (one Track),t3: (one Exit) {
(((t != t2) && (t2 != t3) && (t != t3) && (t in (t2.succs)) && (t in (t3.succs))) => ((t in Junction) && (t2 !in (t2.succs)) && (t3 !in (t3.succs))))
})
}





