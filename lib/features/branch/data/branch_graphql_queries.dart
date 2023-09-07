class BranchGraphQLQueries {
  static final getBranchDetails = '''
query getBranchDetailsByPk {
  branch_by_pk(id: "2") {
    branch_address
    branch_contact_no
    branch_latitude
    branch_longitude
    branch_name
    branch_radius
    id
  }
}
''';
}
