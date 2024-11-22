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
pred inv15[] {
(all x: (one Student),y: (one Course) {
((lone ((((y.((x.projects).grades)) & (y.((x.projects).grades))) + (1 & (y.((x.projects).grades)))) - 1)) => (x in (y.enrolled)))
})
}





