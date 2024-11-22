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
(all f: (one (u.follows)) {
(all s: (one (u.suggested)) {
((((u.sees) - Photo) !in (u.posts)) && ((((u.sees) - Photo) in (f.posts)) || (((u.sees) - Photo) in (s.posts))))
})
})
})
}





