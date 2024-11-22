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
(all disj s1,s2: (one Student) {
(all g1: (one (s1.(Course.grades))) {
(((some ((s1.projects) & (s2.projects))) && (some g1) && (some (s2.(Course.grades)))) => (((s2.(Course.grades)) in (g1.(ordering/prev[]))) || (g1 in ((s2.(Course.grades)).(ordering/prev[]))) || (g1 = (s2.(Course.grades)))))
})
})
}





