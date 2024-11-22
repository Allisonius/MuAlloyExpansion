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
pred inv7[] {
(all en: (one Track),ex: (one Track) {
(((en in Entry) && (ex in Entry) && (ex in (en.(^succs)))) => (ex != en))
})
}





