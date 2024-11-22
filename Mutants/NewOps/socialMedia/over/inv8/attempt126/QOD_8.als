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
(some u2: (one User) {
(all ad: (one Ad) {
((ad in (((User)).sees)) => (((ad in (u2.posts)) && (u2 in (((User)).follows))) || ((ad in (u2.posts)) && (u2 in (((User)).suggested)))))
})
})
}





