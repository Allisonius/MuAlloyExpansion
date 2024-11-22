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
((((((Student))->p) in projects) && ((((Student))->p) in projects) && (((Student)) != ((Student)))) => (all g1,g2: (one Grade),c: (one Course) {
((((c->(((Student))->g1)) in grades) && ((c->(((Student))->g2)) in grades)) => ((g1 = g2) || (g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[])))))
}))
})
}





