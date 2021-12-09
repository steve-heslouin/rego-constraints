# @enforcement dryrun
# @kinds core/Namespace

package demorestrictednamespace


violation[{ "msg": msg }]{
    annotation := input.review.object.metadata.annotations.protected
    not annotation = "no"
    msg = sprintf("Namespace %v is annotated with protected=yes, thus it can not be deleted", [input.review.name])

}
