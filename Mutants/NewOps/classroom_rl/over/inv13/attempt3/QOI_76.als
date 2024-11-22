module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv13[] {
((no (Student.Tutors)) && ((Person.Tutors) in Student) && (no (Tutors.Teacher)) && (no var123456 : Teacher { ((Tutors.Person) in var123456)}))
}





