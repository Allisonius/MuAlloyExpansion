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
pred inv9[] {
(all p: (one Professor),c: (one Course) {
(((p->c) in teaches) => (!(some p2: (one Professor) {p2 != p =>  {p2 != p =>  {
((p2->c) in enrolled)
}}})))
})
}





