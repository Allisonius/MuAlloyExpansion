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
((no (Student.Tutors)) && (one (Teacher.Tutors)) && ((Teacher.Tutors) in Student) && (no (Tutors.Teacher)) && (some (Tutors.Student)) && ((Tutors.Student) in Teacher))
}





