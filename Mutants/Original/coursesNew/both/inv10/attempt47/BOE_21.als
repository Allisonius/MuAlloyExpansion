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
(all x: (one Person) {
(all z: (one Course) {
(some y: (one Grade) {
(((z.grades) in (x->y)) => (x !in Professor))
})
})
})
}





