import 'package:url_launcher/url_launcher.dart';

Future<void> openLink(Uri uri) async {
  try {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  } catch (e) {
    print(e);
  }
}
