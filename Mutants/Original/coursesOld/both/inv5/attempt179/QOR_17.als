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
pred inv5[] {
((all p: (one Professor),pr: (one Project) {
((p->pr) !in projects)
}) && (all pr2: (one Project) {
(no per: (one Person) {
((per->pr2) in projects)
})
}))
}





