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
pred inv14[] {
(all p: (one Person) {
(some project: (one (p.projects)) {
(no ((getProjectStudents[project]) & (getProjectStudents[(Project - project)])))
})
})
}

fun getProjectStudents[project: Project] : (set Student) {
((projects.project) & Person)
}



