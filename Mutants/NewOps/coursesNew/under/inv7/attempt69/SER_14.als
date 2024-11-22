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
(all x: (one Course) {
(all y: (one Course) {
((y in (x.enrolled)) => (lone z: (one Project) {
((z in (x.projects)) && (z in (y.projects)))
}))
})
})
}





