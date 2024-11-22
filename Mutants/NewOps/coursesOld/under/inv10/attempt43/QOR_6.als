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
pred inv10[] {
(all p: (one Person) {
(lone c: (one Course) {
(all g: (one Grade) {
(((p->(c->g)) in grades) => (p in Student))
})
})
})
}





