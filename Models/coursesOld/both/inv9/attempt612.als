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

pred inv9{
all t1,t2:Professor, c:Course | t1 != t2 and c in t1.enrolled and c in t2.enrolled => 
  		not some c2:Course | (c in t1.enrolled and c in t2.teaches) or (c in t2.enrolled and c in t1.teaches)
}