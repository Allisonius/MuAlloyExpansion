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
(lone p: (one Project) {
(all y: (one Student) {
(all x: (one Course) {
((p in (x.projects)) && (p in (y.projects)))
})
})
})
}





