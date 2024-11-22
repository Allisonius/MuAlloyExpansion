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
(all p: (one Person),c: (one Course),ps1,ps2: (one Project) {
(((ps1 in (p.enrolled)) && (ps2 in (p.projects))) => (ps1 = ps2))
})
}





