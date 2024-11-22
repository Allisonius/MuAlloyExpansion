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
((all y: (one univ) {
((y in Photo) => (some x: (one User) {
((x.posts) = y)
}))
}) && (all x,y,z: (one univ) {
(((x in User) && (z in User) && (y in Photo) && ((x.posts) = y) && ((z.posts) !in y)) => (x = z))
}))
}





