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
pred inv12[] {
(all s1: (Person - Student) {
(all c: (one Course) {
(((s1->c) in enrolled) => (lone g: (one Grade) {
((c->(s1->g)) in grades)
}))
})
})
}





