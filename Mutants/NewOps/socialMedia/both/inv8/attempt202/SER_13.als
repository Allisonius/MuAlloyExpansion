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
(all a: (one Ad),c: (one Ad) {
((c in (a.sees)) => (all b: (one User) {
((b in (a.follows)) || ((b in (a.suggested)) && (c in (b.posts))))
}))
})
}





