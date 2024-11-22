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
(all p: (one Professor),pp: (one (Professor - p)),c: (one Course) {
((pp !in (p.enrolled)) => ((c in (p.teaches)) && (c in (pp.teaches))))
})
}





