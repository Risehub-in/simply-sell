import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/features/branch/data/branch_graphql_queries.dart';
import 'package:simply_sell/features/branch/data/models/branch_model.dart';
import 'package:simply_sell/features/branch/data/remote_data_source/branch_remote_data_source.dart';

class BranchRemoteDataSourceImpl implements BranchRemoteDataSource {
  final HasuraService hasuraService;

  BranchRemoteDataSourceImpl({required this.hasuraService});
  @override
  Future<BranchModel> getBranchDetails() async {
    try {
      final result = await hasuraService.client.query(
          QueryOptions(document: gql(BranchGraphQLQueries.getBranchDetails)));
      final branchDetails = BranchModel.fromJson(result.data?['branch_by_pk']);
      return branchDetails;
    } catch (e) {
      rethrow;
    }
  }
}
