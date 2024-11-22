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
(all s1: (one Person) {
(all ps1,ps2: (one Project) {
((ps1 = ps2) => ((ps1 in (s1.projects)) && (ps2 in (s1.projects))))
})
})
}





