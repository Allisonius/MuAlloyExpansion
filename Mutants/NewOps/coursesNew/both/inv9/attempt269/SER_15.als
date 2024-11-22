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
(all p,q: (one Project) {
(all pt: (one (p.teaches)) {
(all qe: (one (q.enrolled)) {
((pt !in (q.enrolled)) && (qe !in (p.teaches)))
})
})
})
}





