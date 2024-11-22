module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
(!(some a: (one Ad) {
(((((User))->a) in sees) && ((posts.a) !in ((((User)).follows) + (((User)).suggested))))
}))
}





