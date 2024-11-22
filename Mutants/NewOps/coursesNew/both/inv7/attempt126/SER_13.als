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
(all s: (one Professor) {
(all c1,c2: (one Course) {
((((s->c1) in enrolled) && ((s->c2) in enrolled)) => (some pr: (one Project) {
(((s->pr) in projects) && (c1 = c2))
}))
})
})
}





