
pred test1 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person1
Student = Person1
inv15[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Group0: Group {some disj Class0: Class {
no Person
no Tutors
no Teaches
no Person' --loop state
Group = Group0
Class = Class0
no Groups
no Teacher
no Teacher' --loop state
no Student
no Student' --loop state
inv15[]
}}
}
run test2 for 3 but 1 steps
