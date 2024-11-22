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
(((projects.(((Student)).projects)) & Course) in (((Student)).enrolled))
}

fun getProjectCourse[p: Project] : (one Course) {
((projects.p) & Course)
}



