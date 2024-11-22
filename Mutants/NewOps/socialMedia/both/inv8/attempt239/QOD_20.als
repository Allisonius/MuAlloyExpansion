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
((a in (((User)).sees)) => (one u1: (one User) {
(((u1 in (((User)).follows)) || (u1 in (((User)).suggested))) && (a in (u1.posts)))
}))
})
}





