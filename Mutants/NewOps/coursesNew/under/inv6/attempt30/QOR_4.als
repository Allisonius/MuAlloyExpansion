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
(one st: (one Student),pr: (one (st.projects)) {
(some c: (one Course) {
((c in (st.enrolled)) <=> (pr in (c.projects)))
})
})
}





