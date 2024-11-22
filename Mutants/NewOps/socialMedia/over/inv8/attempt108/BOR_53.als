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
(all ad: (one Ad) {
(all u1,u2: (one User) {
((ad in (u1.sees)) <=> (((u2 in (u1.follows)) || (u2 != (u1.suggested))) && (ad in (u2.posts)) && (u1 != u2)))
})
})
}





