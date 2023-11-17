import 'package:trackit/main_common.dart';

void main() {
  const String apikey = String.fromEnvironment("ABLY_API_KEY");
  mainCommon({"apiKey": apikey});
}
