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
pred inv3[] {
(all x: (one Course) {
(some z: (one Student),y: (one (Professor - z)) {
(((z->x) in enrolled) => ((y->x) != teaches))
})
})
}





