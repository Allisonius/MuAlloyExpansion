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
pred inv3[] {
((all x: (one User),y: (one Photo) {
(((y !in Ad) && ((x->y) in sees)) => (some z: (one User) {
(((z->y) in posts) || ((x->y) in follows))
}))
}) && (all x: (one User),y: (one Ad) {
((x->y) in sees)
}))
}





