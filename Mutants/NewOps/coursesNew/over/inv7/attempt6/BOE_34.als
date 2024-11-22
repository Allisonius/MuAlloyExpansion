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
pred inv7[] {
(all x: (one Person) {
(all y: (one Project) {
(all z1,z2: (one Course) {
(((y in (z1.projects)) && (y !in (z2.projects))) => (y in (x.projects)))
})
})
})
}





