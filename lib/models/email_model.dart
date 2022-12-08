import 'dart:convert';
import 'package:http/http.dart' as http;

Future sendEmail({
  required String name,
  required String email,
  required String message,
  required String subject,
}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
    url,
    headers: {
      "origin": "https://www.localhost",
      "Content-Type": "application/json",
    },
    body: json.encode(
      {
        "service_id": "service_wfez3vi",
        "template_id": "template_mrdjn76",
        "user_id": "n8OtUJ_wxusnbzYwc",
        "template_params": {
          "user_name": name,
          "user_email": email,
          "user_message": message,
          "user_subject": subject,
        },
      },
    ),
  );
  print(response.body);
}
