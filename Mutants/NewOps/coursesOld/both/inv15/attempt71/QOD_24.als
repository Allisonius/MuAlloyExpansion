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
(all disj s1,s2: (one Student),g1,g2: (one Grade) {
(((((s1 + s2) in (projects.((Project)))) && ((s1 + s2) in (enrolled.((Course)))) && (((Project)) in (((Course)).projects)) && (((s1->g1) + (s2->g2)) in (((Course)).grades))) => (g1 = g2)) || ((g1.(ordering/prev[])) = g2) || (g1 = (g2.(ordering/prev[]))))
})
}





