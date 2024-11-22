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
(all a: (one User),c: (one Ad) {
((c in (a.follows)) => (all b: (one User) {
((c in (b.posts)) => ((b in (a.follows)) || (b in (a.suggested))))
}))
})
}





