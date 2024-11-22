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
pred inv15[] {
(all s1,s2: (one Student) {
(all p: (one Project) {
(all c: (one Course) {
(((((s1->p) in projects) && ((s2->p) in projects) && ((c->p) in projects) && ((c->(s1->((Grade)))) in grades) && ((c->(s2->((Grade)))) in grades)) => (((Grade)) = ((Grade)))) || (((Grade)) = (((Grade)).(ordering/prev[]))) || (((Grade)) = (((Grade)).(ordering/prev[]))))
})
})
})
}





