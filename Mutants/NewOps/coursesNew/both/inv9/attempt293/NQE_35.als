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
(some z: (one Course) {
(all y: (one Person) {
(all x: (one Professor) {
(((x in (teaches.z)) && (y in (enrolled.z))) => (y !in Professor))
})
})
})
}





