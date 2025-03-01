#' Générer un rapport d'analyse
#'
#' Cette fonction compile un rapport Quarto avec des paramètres spécifiques.
#'
#' @param commune Nom de la commune.
#' @param departement Nom du département.
#' @param output Chemin de sortie du rapport.
#'
#' @return Génère un rapport HTML.
#' @import quarto
#' @export
generer_rapport <- function(commune, departement, output) {
  qmd_path <- system.file("rapport.qmd", package = "projetFinal")
  if (qmd_path == "") stop("Fichier rapport.qmd introuvable.")

  quarto::quarto_render(input = qmd_path,
                        output_file = output,
                        execute_params = list(commune = commune, departement = departement))
}
