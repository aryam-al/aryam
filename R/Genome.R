#' Genome S4 Class
#'
#' @slot genome_name Name of the genome
#' @slot total_chromosomes Total number of chromosomes
#' @slot total_proteins Total number of proteins
setClass('Genome',
  representation(
    genome_name       = 'character',
    total_chromosomes = 'numeric',
    total_proteins    = 'numeric'
  )
)

#' Average proteins per chromosome
#' @param object A Genome object
#' @export
setGeneric('avgProteinPerCh', function(object) standardGeneric('avgProteinPerCh'))

setMethod('avgProteinPerCh', 'Genome', function(object) {
  round(object@total_proteins / object@total_chromosomes)
})
