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
((no (Student.Tutors)) && ((Teacher.Tutors) in Student) && (no (Tutors.Teacher)) && ((Tutors.Teacher) in Teacher))
}





