import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final String url = 'https://hasura-dprh.onrender.com/v1/graphql';
  HasuraConnect hasuraConnect = HasuraConnect(url, headers: {
    'content-type': 'application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsImtpZCI6IlZ2RGwwR2ZhVEljaHhtb0YiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNjkxODYzOTQyLCJpYXQiOjE2OTEyNTkxNDIsImlzcyI6Imh0dHBzOi8vY2dxeWtsZ3hhY3B1Y2tqdG54bWYuc3VwYWJhc2UuY28vYXV0aC92MSIsInN1YiI6ImI5MWFkNWM2LTgzNzYtNGMzMC05ZmFjLTQ1MzQ0ODFhODUzYiIsImVtYWlsIjoiaGFyaXNoLmpuaWlAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJ4LWhhc3VyYS1hbGxvd2VkLXJvbGVzIjpbInVzZXIiLCJhZG1pbiJdLCJ4LWhhc3VyYS1kZWZhdWx0LXJvbGUiOiJ1c2VyIn0sInJvbGUiOiJhdXRoZW50aWNhdGVkIiwiYWFsIjoiYWFsMSIsImFtciI6W3sibWV0aG9kIjoib3RwIiwidGltZXN0YW1wIjoxNjkxMjU5MTQyfV0sInNlc3Npb25faWQiOiJkNjdmNWExNy00NzEyLTRiY2MtYTk5Yy00ZjVmZGI4OWU0NGEifQ.VJrsI5ki6zOmVYl9PhF4OVXIhBry_xmf8pDiF33mTpY',
    'x-hasura-role': 'admin'
  });

  Supabase supabase = Supabase.instance;

  Future getToken() async {
    final response = await supabase.client.auth
        .signInWithPassword(email: 'harish.jnii@gmail.com', password: '123456');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getToken();
            // context.push('/categories');
          },
          child: Text('Category'),
        ),
      ),
    );
  }
}
