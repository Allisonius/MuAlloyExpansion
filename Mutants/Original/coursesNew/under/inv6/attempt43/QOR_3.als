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
pred inv6[] {
(lone s: (one Student),proj: (one Project) {
((s in (projects.proj)) => (some c: (one Course) {
((s in (enrolled.c)) && (proj in (c.projects)))
}))
})
}





