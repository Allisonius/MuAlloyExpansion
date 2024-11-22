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
(all disj t,t2,t3: (one Track) {
(((one (t2.succs)) && (one (t3.succs)) && (t in (t2.succs)) && (t in (t3.succs))) || ((t in (Signal.(^succs))) <=> (t in Junction)))
})
}





