# plushu-addons

This plugin handles the generic management of Plushu addons.

Addons are instances of services (as managed bu the plushu-services plugin)
that are tied to an app: for instance, you would add a RethinkDB addon to an
app to give it a backing RethinkDB data store.

The actual runtime implementation of plugins needs to be handled by another
plugin, such as plushu-addons-docker, that hooks into a particular service
(as plushu-addons-docker hooks into Docker).
