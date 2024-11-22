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
(all c: (one Course),g1,g2: (one Grade),p: (one Project),disj s1,s2: (one Student) {
((g1 = g2) => ((((s1->p) + (s2->p)) in projects) && (((c->(s1->g1)) + (c->(s2->g2))) in grades)))
})
}





