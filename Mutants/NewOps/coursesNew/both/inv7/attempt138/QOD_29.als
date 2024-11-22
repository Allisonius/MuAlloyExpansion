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
(all s: (one Student) {
(all c: (one Course) {
(all proj2: (one Project) {
(((((Project)) in (s.projects)) && (proj2 in (s.projects)) && (((Project)) in (c.projects))) => (proj2 !in (c.projects)))
})
})
})
}





