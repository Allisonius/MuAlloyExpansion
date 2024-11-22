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
((some ((s1.projects) & (s2.projects))) => (no m1: (one (s1.(Course.grades))),m2: (one (s2.(Course.grades))) {
(m1 in ((m2 + (m2.(ordering/prev[]))) + (m2.(ordering/next[]))))
}))
})
}





