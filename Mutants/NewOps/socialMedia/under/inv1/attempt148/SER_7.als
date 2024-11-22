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
pred inv1[] {
(all x,y,z: (one User) {
(((x in User) && (z in User) && (y in Photo) && ((x.posts) = y) && ((z.posts) = y)) => (x = z))
})
}





