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
(all p: (one Project) {
(all s1,s2: (one Student) {
(all g1,g2: (one Grade),c: (one Course) {
((((c->(s1->g1)) in grades) && ((c->(s2->g2)) in grades)) => ((g1 = g2) || (g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[])))))
})
})
})
}





