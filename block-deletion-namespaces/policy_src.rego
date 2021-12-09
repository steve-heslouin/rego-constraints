# @enforcement dryrun
# @kinds core/Namespace

package demorestrictednamespace


violation[{ "msg": msg }]{
	operation := input.review.operation
	operation = "DELETE"
    annotation := input.review.object.metadata.annotations.protected
    not annotation = "no"
    msg = sprintf("Namespace %v is annotated with protected=yes, thus it should not be deleted", [input.review.name])
}
