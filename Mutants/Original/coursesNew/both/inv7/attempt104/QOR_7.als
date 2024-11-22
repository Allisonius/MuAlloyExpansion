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
(all x: (one Student) {
(lone y: (one Course) {
((x in (enrolled.y)) => (one z: (one Project) {
((x in (projects.z)) && (y in (projects.z)))
}))
})
})
}





