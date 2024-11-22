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
(some t1,t2: (one Track) {
(((((Track)) in (t1.succs)) && (((Track)) in (t2.succs)) && (t1 != t2) && (t1 != ((Track))) && (t2 != ((Track)))) <=> (((Track)) in Junction))
})
}





