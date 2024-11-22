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
(all proj: (one Project),s: (one Student) {
((s in (projects.proj)) => (some c: (one Person) {
((s in (enrolled.c)) && (proj in (c.projects)))
}))
})
}





