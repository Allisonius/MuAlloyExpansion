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
(all u,u2: (one User) {
((ad in (u.sees)) => (((u2 in (u.follows)) || (u2 in (u.(*suggested)))) && (ad in (u2.posts))))
})
})
}





