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
pred inv3[] {
(all c: (one Course) {
(one p: (Person & Student) {
(((p->c) in teaches) => ((p in Professor) && ((p->c) !in enrolled)))
})
})
}





