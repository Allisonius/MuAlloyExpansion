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
(all a: (one Ad) {
(some u: (one User) {
((u in (sees.a)) => ((a in (posts.((User)))) && ((((User)) in (u.follows)) || (((User)) in (u.suggested)))))
})
})
}





