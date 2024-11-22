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
((((((User)) != ((User))) && (((User)) !in (((User)).follows))) => (((((User)).posts) :> Ad) !in (((User)).sees))) && (all u1,u2: (one User) {
(((u1 != u2) && (u2 !in (u1.suggested))) => (((u2.posts) :> Ad) !in (u1.sees)))
}))
}





