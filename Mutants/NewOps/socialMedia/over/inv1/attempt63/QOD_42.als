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
((all f: (one Photo) {
(f in (User.posts))
}) && (all f: (one Photo) {
((f in ((((User)).posts) + (((User)).posts))) => (((User)) = ((User))))
}))
}





