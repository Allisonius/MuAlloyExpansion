module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv14[] {
(all s,s1: (one Student),p,p1: (one Project) {
(((p != p1) && (s != s1) && ((s->p) in projects) && ((s1->p) in teaches) && ((s->p1) in projects)) => ((s1->p1) !in projects))
})
}





