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
(all u: (one User) {
(all a: (one ((u.sees) & Ad)) {
(some f: (one User) {
((a in (f.posts)) => ((f in (u.follows)) || (f in (u.posts))))
})
})
})
}





