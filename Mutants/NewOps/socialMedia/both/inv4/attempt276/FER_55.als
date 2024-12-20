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
pred inv4[] {
(all u: (one User) {
(some p: (one Ad) {
(((u->p) in posts) => (all photo: (one Photo) {
(((u->photo) in suggested) => (photo in Ad))
}))
})
})
}





