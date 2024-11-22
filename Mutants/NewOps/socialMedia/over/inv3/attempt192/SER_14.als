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
(all x: (one Photo),y: (one User),z: (one Photo) {
(((y in (follows.x)) && (z in (posts.y))) <=> (x in (sees.z)))
})
}





