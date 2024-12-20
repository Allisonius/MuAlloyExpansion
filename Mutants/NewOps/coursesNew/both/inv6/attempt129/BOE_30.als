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
(all s: (one Person) {
(all p: (one Course) {
(all proj: (one Project) {
((p in (projects.proj)) => ((s in Student) && (s in (enrolled.p))))
})
})
})
}





