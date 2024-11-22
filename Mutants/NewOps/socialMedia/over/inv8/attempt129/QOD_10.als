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
((((((User)).sees) & Ad) = (((((User)).follows).posts) + (((((User)).suggested).posts) & Ad))) && (all u: (one User) {
(all a: (one Ad) {
((a in (u.sees)) => (some p: (one User) {
((a in (p.posts)) && (p in ((u.follows) + (u.suggested))))
}))
})
}))
}





