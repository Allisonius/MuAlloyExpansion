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
(all en: (one Entry),ex: (one Exit) {
(some t: (one Track) {t != en =>  {t != en =>  {
(((en->t) in succs) && ((t->ex) in succs))
}}})
})
}





