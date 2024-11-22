open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

pred inv15{
all s1,s2 : Student | all c : Course | working2gether[s1,s2,c] implies consecGrades[s1,s2,c]
}

pred consecGrades[s1,s2:Student,c:Course]{
	all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and p in s1.projects&s2.projects&c.projects
}