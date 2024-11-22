module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (set Id),
source: (some Source)
}
pred inv3[] {
((((User.profile).source) in Institution) => (lone ((User.profile).ids)))
}