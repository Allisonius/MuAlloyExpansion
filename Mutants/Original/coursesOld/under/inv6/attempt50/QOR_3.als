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
(lone x: (one Student),y: (one Project) {
(((x->y) in projects) => (some c: (one Course) {
(((x->c) in enrolled) && ((c->y) in projects))
}))
})
}





