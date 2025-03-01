#' Générer un rapport d'analyse
#'
#' Cette fonction compile un rapport Quarto en utilisant des paramètres spécifiques pour une commune et un département.
#'
#' @param commune Nom de la commune pour le rapport.
#' @param departement Nom du département pour le rapport.
#' @param output Chemin du fichier de sortie.
#'
#' @return Aucun retour, génère un fichier de rapport.
#' @import rmarkdown
#' @export
generer_rapport <- function(commune, departement, output) {
  # Localiser le fichier QMD dans inst/
  qmd_path <- system.file("rapport.qmd", package = "nom_de_ta_librairie")

  if (qmd_path == "") {
    stop("Le fichier rapport.qmd est introuvable dans le package.")
  }

  # Rendre le fichier Quarto
  quarto::quarto_render(input = qmd_path,
                        output_file = output,
                        execute_params = list(commune = commune, departement = departement))
}
