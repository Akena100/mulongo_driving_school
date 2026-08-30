import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  static Future<void> launchPhone(String phone) async {
    final uri = Uri.parse('tel:$phone');
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  static Future<void> launchWhatsApp(String phone, {String? message}) async {
    final encoded = Uri.encodeComponent(
      message ?? 'Hello Mulongo Driving School',
    );
    final uri = Uri.parse('https://wa.me/$phone?text=$encoded');
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  static Future<void> launchUrlExternal(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }
}
