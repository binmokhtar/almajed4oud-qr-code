String? validation(String url, String branchName) {
  if (url.isEmpty || branchName.isEmpty) {
    return 'فضلا تعبئة جميع الحقول';
  }

  if (!AppRegex.isGoogleMapsUrl(url)) {
    return 'يبدو أن الرابط الذي أدخلته غير صحيح';
  }

  return null;
}

class AppRegex {
  static bool isGoogleMapsUrl(String url) {
    return RegExp(
      r'^https?:\/\/(?:www\.)?(?:googleusercontent\.com|maps\.google\.com|google\.com\/maps|goo\.gl|maps\.app\.goo\.gl).*$',
      caseSensitive: false,
    ).hasMatch(url);
  }
}
