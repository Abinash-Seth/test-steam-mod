dashboard "Infosec-cost" {
  title = "Infosec Cost"

text {
  value= "This shows all infosec infra spents"
}
card {
    sql = query.infosec_spents.sql
  }

}
