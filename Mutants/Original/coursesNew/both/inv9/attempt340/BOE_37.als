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
pred inv9[] {
(all x: (one Professor) {
(all y: (one Person) {
(all z: (one Course) {
(((z in (x.enrolled)) && (z in (y.enrolled))) => (((y.enrolled) !in (x.teaches)) && ((y.enrolled) !in (x.teaches))))
})
})
})
}





