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
(all u2: (one User) {
(all p: (one Ad) {
(((p in (((User)).sees)) && (p in (u2.posts))) => (u2 in (((User)).follows)))
})
})
}





